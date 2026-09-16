"""
Gated-CNN 模型定义 (PyTorch 版本)
针对 HT32F675x5 MCU 优化的跌倒检测架构

架构说明:
- 使用门控卷积层代替标准卷积
- 门控机制选择性记忆重要特征，减少过拟合
- 比 LSTM 更轻量，适合边缘部署
- 比标准 CNN 泛化能力更强
"""

import torch
import torch.nn as nn
import torch.nn.functional as F
import numpy as np
from dataclasses import dataclass
from typing import List, Tuple, Optional


@dataclass
class GatedCNNConfig:
    """Gated-CNN 配置"""
    # 输入形状 (序列长度, 特征数)
    input_shape: Tuple[int, int] = (100, 6)
    
    # 卷积层配置
    filters: List[int] = None  # 每层滤波器数量
    kernel_sizes: List[int] = None  # 每层卷积核大小
    
    # 门控配置
    gating_units: int = 16  # 门控单元数
    use_gated_linear_units: bool = True  # 是否使用 GLU
    
    # 正则化
    dropout_rate: float = 0.3
    l2_reg: float = 0.01
    
    # 训练配置
    learning_rate: float = 0.001
    batch_size: int = 32
    epochs: int = 100
    patience: int = 15
    min_delta: float = 0.001
    
    def __post_init__(self):
        if self.filters is None:
            self.filters = [16, 32, 32]
        if self.kernel_sizes is None:
            self.kernel_sizes = [5, 3, 3]


class GatedConv1D(nn.Module):
    """
    门控卷积层 (Gated Conv1D)
    
    实现: y = tanh(W * x) * sigmoid(V * x)
    
    优势:
    - 门控机制控制信息流动
    - 减少梯度消失
    - 更好的泛化能力
    """
    
    def __init__(self, in_channels: int, out_channels: int, kernel_size: int, 
                 padding: int = 0, dilation: int = 1, l2_reg: float = 0.01):
        super().__init__()
        
        self.out_channels = out_channels
        self.kernel_size = kernel_size
        self.padding = padding
        self.dilation = dilation
        
        # 特征卷积: 生成有意义的特征
        self.conv_feature = nn.Conv1d(
            in_channels=in_channels,
            out_channels=out_channels,
            kernel_size=kernel_size,
            padding=padding,
            dilation=dilation
        )
        
        # 门控卷积: 控制信息流动
        self.conv_gate = nn.Conv1d(
            in_channels=in_channels,
            out_channels=out_channels,
            kernel_size=kernel_size,
            padding=padding,
            dilation=dilation
        )
        
        # L2 正则化通过 weight_decay 在优化器中设置
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        # 特征路径
        feature = self.conv_feature(x)
        # 门控路径
        gate = torch.sigmoid(self.conv_gate(x))
        # 门控输出
        return torch.tanh(feature) * gate


class GatedCNNBlock(nn.Module):
    """
    Gated-CNN 块
    
    包含:
    - 门控卷积层
    - 残差连接
    - Dropout
    """
    
    def __init__(self, in_channels: int, out_channels: int, kernel_size: int,
                 dropout_rate: float = 0.3, use_residual: bool = True):
        super().__init__()
        
        self.in_channels = in_channels
        self.out_channels = out_channels
        self.dropout_rate = dropout_rate
        self.use_residual = use_residual
        
        self.gated_conv = GatedConv1D(
            in_channels=in_channels,
            out_channels=out_channels,
            kernel_size=kernel_size
        )
        
        self.bn = nn.BatchNorm1d(out_channels)
        self.dropout = nn.Dropout(dropout_rate)
        
        # 残差连接
        if use_residual and in_channels != out_channels:
            self.residual = nn.Conv1d(in_channels, out_channels, kernel_size=1)
        else:
            self.residual = None
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        residual = x
        
        x = self.gated_conv(x)
        x = self.bn(x)
        x = self.dropout(x)
        
        if self.residual is not None:
            residual = self.residual(residual)
        
        if self.use_residual and residual.shape == x.shape:
            x = x + residual
        
        return x


class TemporalAttention(nn.Module):
    """
    轻量级时间注意力层
    
    用于增强模型对关键时间点的关注
    """
    
    def __init__(self, seq_len: int, channels: int, units: int = 16):
        super().__init__()
        
        self.seq_len = seq_len
        self.channels = channels
        
        # 时间注意力
        self.temporal_attention = nn.Sequential(
            nn.Linear(channels, units),
            nn.Tanh(),
            nn.Linear(units, 1)
        )
        
        # 通道注意力
        self.channel_attention = nn.Sequential(
            nn.Linear(channels, units),
            nn.Tanh(),
            nn.Linear(units, channels)
        )
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        # x shape: (batch, channels, seq_len)
        batch_size = x.shape[0]
        
        # 时间注意力
        x_transposed = x.transpose(1, 2)  # (batch, seq, channels)
        time_att = torch.sigmoid(self.temporal_attention(x_transposed))  # (batch, seq, 1)
        x = x_transposed * time_att
        
        # 通道注意力
        channel_att = torch.sigmoid(self.channel_attention(x))  # (batch, seq, channels)
        x = x * channel_att
        
        return x.transpose(1, 2)  # (batch, channels, seq)


class GatedCNN(nn.Module):
    """
    Gated-CNN 跌倒检测模型 (PyTorch 版本)
    
    架构:
    Input -> Embedding -> GatedConv1D x3 -> TemporalAttention -> GlobalPooling -> Dense -> Output
    
    优势:
    - 门控机制提升泛化
    - 轻量级，适合 MCU
    - 支持可变长度输入
    """
    
    def __init__(self, config: Optional[GatedCNNConfig] = None):
        super().__init__()
        
        self.config = config or GatedCNNConfig()
        
        seq_len, n_features = self.config.input_shape
        
        # 特征嵌入 (使用 Xavier 初始化)
        self.embedding = nn.Linear(n_features, 32)
        nn.init.xavier_uniform_(self.embedding.weight)
        
        # Gated-CNN 块
        self.gated_blocks = nn.ModuleList()
        in_channels = 32
        for filters, kernel_size in zip(self.config.filters, self.config.kernel_sizes):
            self.gated_blocks.append(
                GatedCNNBlock(
                    in_channels=in_channels,
                    out_channels=filters,
                    kernel_size=kernel_size,
                    dropout_rate=self.config.dropout_rate
                )
            )
            in_channels = filters
        
        # 时间注意力
        self.temporal_attn = TemporalAttention(
            seq_len=seq_len,
            channels=self.config.filters[-1],
            units=self.config.gating_units
        )
        
        # 池化
        self.global_avg_pool = nn.AdaptiveAvgPool1d(1)
        self.global_max_pool = nn.AdaptiveMaxPool1d(1)
        
        # 跌倒特征层 (检测高加速度变化)
        # 使用 adaptive pooling 保持输出长度一致
        self.fall_pool = nn.AdaptiveAvgPool1d(seq_len)  # 保持 seq_len = 100
        self.fall_detector = nn.Sequential(
            nn.Linear(seq_len, 32),
            nn.ReLU(),
            nn.Dropout(0.2)
        )
        
        # 分类器 (不使用 Sigmoid, BCEWithLogitsLoss 会处理)
        concat_features = self.config.filters[-1] * 2 + 32  # avg + max + fall特征
        self.classifier = nn.Sequential(
            nn.Linear(concat_features, 64),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            nn.Dropout(self.config.dropout_rate),
            nn.Linear(64, 32),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            nn.Dropout(self.config.dropout_rate),
            nn.Linear(32, 1)
        )
        
        # 权重初始化
        self._init_weights()
    
    def _init_weights(self):
        for m in self.modules():
            if isinstance(m, nn.Linear):
                nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
                if m.bias is not None:
                    nn.init.constant_(m.bias, 0)
            elif isinstance(m, nn.Conv1d):
                nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
            elif isinstance(m, nn.BatchNorm1d):
                nn.init.constant_(m.weight, 1)
                nn.init.constant_(m.bias, 0)
    
    def forward(self, x: torch.Tensor) -> torch.Tensor:
        # x shape: (batch, seq_len, features)
        x = self.embedding(x)  # (batch, seq_len, 32)
        x = x.transpose(1, 2)  # (batch, 32, seq_len)
        
        # 通过 Gated-CNN 块
        for block in self.gated_blocks:
            x = block(x)
        
        # 保存用于 max pooling
        x_for_attn = x.clone()
        
        # 时间注意力 (只用于 avg pool)
        x_attn = self.temporal_attn(x_for_attn)
        
        # 池化
        avg_pool = self.global_avg_pool(x_attn).squeeze(-1)  # (batch, channels)
        max_pool = self.global_max_pool(x).squeeze(-1)  # (batch, channels)
        
        # 跌倒特征: 直接从原始输入计算加速度幅值变化
        # 这有助于检测跌倒时的高加速度冲击
        acc_magnitude = torch.sqrt(x_for_attn[:, :3, :].pow(2).sum(dim=1))  # (batch, seq_len)
        # 使用 adaptive pool 保持长度一致
        acc_pooled = self.fall_pool(acc_magnitude.unsqueeze(1)).squeeze(1)  # (batch, seq_len)
        fall_features = self.fall_detector(acc_pooled)  # (batch, 32)
        
        # 拼接
        features = torch.cat([avg_pool, max_pool, fall_features], dim=1)  # (batch, concat_features)
        
        # 分类
        output = self.classifier(features)
        
        return output
    
    def get_config(self) -> GatedCNNConfig:
        return self.config


def create_lite_model(config: Optional[GatedCNNConfig] = None) -> GatedCNN:
    """
    创建轻量版 Gated-CNN (用于资源极度受限的场景)
    
    特点:
    - 更少的滤波器
    - 简化的结构
    - 模型大小: ~20KB
    """
    config = config or GatedCNNConfig()
    config.filters = [8, 16]
    config.kernel_sizes = [3, 3]
    config.gating_units = 8
    config.dropout_rate = 0.2
    
    return GatedCNN(config)


def create_balanced_model(config: Optional[GatedCNNConfig] = None) -> GatedCNN:
    """
    创建平衡版 Gated-CNN (推荐配置)
    
    特点:
    - 适中的滤波器数量
    - 良好的准确率/大小平衡
    - 模型大小: ~45KB
    """
    config = config or GatedCNNConfig()
    config.filters = [16, 32, 32]
    config.kernel_sizes = [5, 3, 3]
    config.gating_units = 16
    config.dropout_rate = 0.3
    
    return GatedCNN(config)


def create_high_performance_model(config: Optional[GatedCNNConfig] = None) -> GatedCNN:
    """
    创建高性能版 Gated-CNN
    
    特点:
    - 更多的滤波器
    - 更高的准确率
    - 模型大小: ~80KB
    """
    config = config or GatedCNNConfig()
    config.filters = [32, 64, 64, 32]
    config.kernel_sizes = [7, 5, 3, 3]
    config.gating_units = 32
    config.dropout_rate = 0.4
    
    return GatedCNN(config)


def export_to_c_array(model: nn.Module, output_path: str, array_name: str = "gated_cnn_weights"):
    """
    导出模型权重为 C 头文件格式
    用于在 MCU 上直接加载
    """
    print(f"Exporting model to C array: {output_path}")
    
    state_dict = model.state_dict()
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(f'''/**
 * @file    {output_path.split('/')[-1]}
 * @brief   Gated-CNN 模型权重数据
 * @generated by PyTorch export
 */

#ifndef GATED_CNN_WEIGHTS_H
#define GATED_CNN_WEIGHTS_H

#include <stdint.h>

''')
        
        for name, param in state_dict.items():
            data = param.detach().cpu().numpy()
            shape = data.shape
            
            f.write(f'/* {name}: shape={shape}, dtype={data.dtype} */\n')
            f.write(f'static const float {name.replace(".", "_")}[] = {{\n')
            
            flat = data.flatten()
            for i in range(0, len(flat), 8):
                chunk = flat[i:i+8]
                f.write('    ' + ', '.join([f'{v:.8f}' for v in chunk]) + ',\n')
            
            f.write('};\n\n')
        
        f.write('#endif /* GATED_CNN_WEIGHTS_H */\n')
    
    print(f"  Exported {len(state_dict)} tensors to {output_path}")


# 测试代码
if __name__ == "__main__":
    print("Testing Gated-CNN model creation (PyTorch version)...")
    
    # 测试默认配置
    config = GatedCNNConfig()
    model = GatedCNN(config)
    
    print(f"\nModel config: {config}")
    
    # 测试前向传播
    print("\n" + "="*60)
    print("Testing forward pass...")
    print("="*60)
    
    X = torch.randn(2, 100, 6).float()
    y_pred = model(X)
    print(f"Input shape: {X.shape}")
    print(f"Output shape: {y_pred.shape}")
    print(f"Output values: {y_pred.squeeze().tolist()}")
    
    # 计算模型参数数量
    total_params = sum(p.numel() for p in model.parameters())
    print(f"\nTotal parameters: {total_params:,}")
    
    # 估算模型大小 (每个 float 4 bytes)
    model_size_kb = total_params * 4 / 1024
    print(f"Estimated model size: {model_size_kb:.2f} KB")
    
    print("\n✓ Gated-CNN model test passed!")
