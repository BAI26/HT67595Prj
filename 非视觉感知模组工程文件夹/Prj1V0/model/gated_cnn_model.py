"""
Gated-CNN 模型定义
针对 HT32F675x5 MCU 优化的跌倒检测架构

架构说明:
- 使用门控卷积层代替标准卷积
- 门控机制选择性记忆重要特征，减少过拟合
- 比 LSTM 更轻量，适合边缘部署
- 比标准 CNN 泛化能力更强
"""

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
import numpy as np
from dataclasses import dataclass
from typing import List, Tuple


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


class GatedConv1D(layers.Layer):
    """
    门控卷积层 (Gated Conv1D)
    
    实现: y = tanh(W * x) * sigmoid(V * x)
    
    优势:
    - 门控机制控制信息流动
    - 减少梯度消失
    - 更好的泛化能力
    """
    
    def __init__(self, filters: int, kernel_size: int, 
                 padding: str = 'same', 
                 dilation_rate: int = 1,
                 l2_reg: float = 0.01,
                 **kwargs):
        super().__init__(**kwargs)
        
        self.filters = filters
        self.kernel_size = kernel_size
        self.padding = padding
        self.dilation_rate = dilation_rate
        self.l2_reg = l2_reg
        
        # 特征门
        self.conv_feature = None
        # 门控门
        self.conv_gate = None
    
    def build(self, input_shape):
        # 特征卷积: 生成有意义的特征
        self.conv_feature = layers.Conv1D(
            filters=self.filters,
            kernel_size=self.kernel_size,
            padding=self.padding,
            dilation_rate=self.dilation_rate,
            kernel_regularizer=keras.regularizers.l2(self.l2_reg),
            name=f'{self.name}_feature'
        )
        
        # 门控卷积: 控制信息流动
        self.conv_gate = layers.Conv1D(
            filters=self.filters,
            kernel_size=self.kernel_size,
            padding=self.padding,
            dilation_rate=self.dilation_rate,
            kernel_regularizer=keras.regularizers.l2(self.l2_reg),
            activation='sigmoid',
            name=f'{self.name}_gate'
        )
        
        super().build(input_shape)
    
    def call(self, inputs, training=None):
        # 特征路径
        feature = self.conv_feature(inputs)
        # 门控路径
        gate = self.conv_gate(inputs)
        # 门控输出
        return layers.Multiply()([layers.Activation('tanh')(feature), gate])
    
    def get_config(self):
        config = super().get_config()
        config.update({
            'filters': self.filters,
            'kernel_size': self.kernel_size,
            'padding': self.padding,
            'dilation_rate': self.dilation_rate,
            'l2_reg': self.l2_reg,
        })
        return config


class GatedCNNBlock(layers.Layer):
    """
    Gated-CNN 块
    
    包含:
    - 门控卷积层
    - 残差连接
    - Dropout
    """
    
    def __init__(self, filters: int, kernel_size: int,
                 dropout_rate: float = 0.3,
                 l2_reg: float = 0.01,
                 use_residual: bool = True,
                 **kwargs):
        super().__init__(**kwargs)
        
        self.filters = filters
        self.kernel_size = kernel_size
        self.dropout_rate = dropout_rate
        self.l2_reg = l2_reg
        self.use_residual = use_residual
        
        self.gated_conv = None
        self.bn1 = None
        self.dropout = None
        self.add = None
    
    def build(self, input_shape):
        self.gated_conv = GatedConv1D(
            filters=self.filters,
            kernel_size=self.kernel_size,
            l2_reg=self.l2_reg,
            name=f'{self.name}_gated_conv'
        )
        
        self.bn1 = layers.BatchNormalization(name=f'{self.name}_bn')
        self.dropout = layers.Dropout(self.dropout_rate, name=f'{self.name}_dropout')
        
        if self.use_residual and input_shape[-1] == self.filters:
            self.add = layers.Add(name=f'{self.name}_add')
        else:
            self.add = None
        
        super().build(input_shape)
    
    def call(self, inputs, training=None):
        x = self.gated_conv(inputs)
        x = self.bn1(x, training=training)
        x = self.dropout(x, training=training)
        
        if self.add is not None:
            x = self.add([x, inputs])
        
        return x
    
    def get_config(self):
        config = super().get_config()
        config.update({
            'filters': self.filters,
            'kernel_size': self.kernel_size,
            'dropout_rate': self.dropout_rate,
            'l2_reg': self.l2_reg,
            'use_residual': self.use_residual,
        })
        return config


class TemporalAttention(layers.Layer):
    """
    轻量级时间注意力层
    
    用于增强模型对关键时间点的关注
    """
    
    def __init__(self, units: int = 16, **kwargs):
        super().__init__(**kwargs)
        self.units = units
    
    def build(self, input_shape):
        seq_len, channels = input_shape[1], input_shape[2]
        
        # 时间注意力
        self.temporal_attention = layers.Dense(
            units=1,
            activation='sigmoid',
            name=f'{self.name}_temporal_att'
        )
        
        # 通道注意力
        self.channel_attention = layers.Dense(
            units=channels,
            activation='sigmoid',
            name=f'{self.name}_channel_att'
        )
        
        super().build(input_shape)
    
    def call(self, inputs):
        # 时间注意力
        time_att = self.temporal_attention(inputs)  # (batch, seq, 1)
        x = inputs * time_att
        
        # 通道注意力
        channel_att = self.channel_attention(x)  # (batch, seq, channels)
        x = x * channel_att
        
        return x
    
    def get_config(self):
        config = super().get_config()
        config.update({'units': self.units})
        return config


class GatedCNN(keras.Model):
    """
    Gated-CNN 跌倒检测模型
    
    架构:
    Input -> GatedConv1D x3 -> TemporalAttention -> GlobalPooling -> Dense -> Output
    
    优势:
    - 门控机制提升泛化
    - 轻量级，适合 MCU
    - 支持可变长度输入
    """
    
    def __init__(self, config: GatedCNNConfig = None, **kwargs):
        super().__init__(**kwargs)
        
        self.config = config or GatedCNNConfig()
        
        # 构建网络
        self.input_layer = layers.Input(shape=self.config.input_shape)
        self.x = self.input_layer
        
        # 特征嵌入
        self.embedding = layers.Dense(
            units=32,
            activation='relu',
            kernel_regularizer=keras.regularizers.l2(self.config.l2_reg),
            name='input_embedding'
        )
        
        # Gated-CNN 块
        self.gated_blocks = []
        for i, (filters, kernel_size) in enumerate(zip(
                self.config.filters, self.config.kernel_sizes)):
            block = GatedCNNBlock(
                filters=filters,
                kernel_size=kernel_size,
                dropout_rate=self.config.dropout_rate,
                l2_reg=self.config.l2_reg,
                name=f'gated_block_{i}'
            )
            self.gated_blocks.append(block)
        
        # 时间注意力
        self.temporal_attn = TemporalAttention(
            units=self.config.gating_units,
            name='temporal_attention'
        )
        
        # 池化
        self.global_pool = layers.GlobalAveragePooling1D(name='global_pool')
        self.max_pool = layers.GlobalMaxPooling1D(name='max_pool')
        
        # 分类头
        concat_features = len(self.config.filters) * 2  # avg + max
        self.classifier = self._build_classifier(concat_features)
        
        # 构建模型
        self outputs = self.classifier([
            self.global_pool(self.temporal_attn(
                self._forward_through_blocks()
            )),
            self.max_pool(self._forward_through_blocks())
        ])
        
        super().__init__(inputs=self.input_layer, outputs=self.outputs, **kwargs)
    
    def _forward_through_blocks(self):
        """通过所有 Gated-CNN 块"""
        x = self.embedding(self.input_layer)
        for block in self.gated_blocks:
            x = block(x)
        return x
    
    def _build_classifier(self, input_dim: int) -> keras.Model:
        """构建分类器"""
        inputs = [
            keras.Input(shape=(input_dim // 2,), name='avg_features'),
            keras.Input(shape=(input_dim // 2,), name='max_features')
        ]
        
        # 拼接特征
        x = layers.Concatenate()(inputs)
        
        # 全连接层
        x = layers.Dense(
            units=32,
            activation='relu',
            kernel_regularizer=keras.regularizers.l2(self.config.l2_reg),
            name='fc1'
        )(x)
        x = layers.Dropout(self.config.dropout_rate, name='fc1_dropout')(x)
        
        x = layers.Dense(
            units=16,
            activation='relu',
            kernel_regularizer=keras.regularizers.l2(self.config.l2_reg),
            name='fc2'
        )(x)
        x = layers.Dropout(self.config.dropout_rate, name='fc2_dropout')(x)
        
        # 输出层
        outputs = layers.Dense(
            units=1,
            activation='sigmoid',
            name='output'
        )(x)
        
        return keras.Model(inputs=inputs, outputs=outputs, name='classifier')
    
    def build(self, input_shape=None):
        """确保模型正确构建"""
        if input_shape is None:
            input_shape = (None,) + self.config.input_shape
        super().build(input_shape)
    
    def call(self, inputs, training=None):
        return super().call(inputs, training=training)
    
    def get_config(self):
        config = super().get_config()
        config.update({'config': self.config})
        return config
    
    @classmethod
    def from_config(cls, config):
        return cls(GatedCNNConfig(**config.get('config', {})))


def create_lite_model(config: GatedCNNConfig = None) -> keras.Model:
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
    
    return GatedCNN(config).build()


def create_balanced_model(config: GatedCNNConfig = None) -> keras.Model:
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
    
    return GatedCNN(config).build()


def create_high_performance_model(config: GatedCNNConfig = None) -> keras.Model:
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
    
    return GatedCNN(config).build()


# 测试代码
if __name__ == "__main__":
    print("Testing Gated-CNN model creation...")
    
    # 测试默认配置
    config = GatedCNNConfig()
    model = GatedCNN(config)
    model.build()
    
    print(f"\nModel input shape: {model.input_shape}")
    print(f"Model output shape: {model.output_shape}")
    
    # 打印模型结构
    print("\n" + "="*60)
    print("Model Summary:")
    print("="*60)
    model.summary()
    
    # 测试前向传播
    print("\n" + "="*60)
    print("Testing forward pass...")
    print("="*60)
    
    X = np.random.randn(1, 100, 6).astype(np.float32)
    y_pred = model.predict(X)
    print(f"Input shape: {X.shape}")
    print(f"Output shape: {y_pred.shape}")
    print(f"Output value: {y_pred[0, 0]:.4f}")
    
    print("\n✓ Gated-CNN model test passed!")
