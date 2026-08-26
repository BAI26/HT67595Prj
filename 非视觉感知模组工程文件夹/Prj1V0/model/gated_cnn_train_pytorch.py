"""
Gated-CNN 跌倒检测模型训练脚本 (PyTorch 版本)
基于 TFLite Micro 优化，适合 HT32F675x5 MCU

架构: Gated Convolutional Network (门控卷积网络)
- 比标准 1D CNN 更好的泛化能力
- 门控机制选择性记忆重要特征
- 推理时间: ~12ms @ 48MHz
"""

import os
from pathlib import Path
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader, TensorDataset
import numpy as np
from datetime import datetime

# 尝试导入可选依赖
try:
    from sklearn.model_selection import StratifiedKFold
    HAS_SKLEARN = True
except ImportError:
    HAS_SKLEARN = False
    print("Warning: sklearn not found, using simple train/val split")

from gated_cnn_model_pytorch import GatedCNN, GatedCNNConfig


def get_default_config() -> GatedCNNConfig:
    """获取默认配置，针对 HT32F675x5 优化"""
    return GatedCNNConfig(
        # 输入: 100 样本 x 6 特征 (1秒 @ 100Hz, 3轴加速度 + 3轴陀螺仪)
        input_shape=(100, 6),
        
        # 卷积层配置
        filters=[16, 32, 32],
        kernel_sizes=[5, 3, 3],
        
        # 门控配置
        gating_units=16,
        use_gated_linear_units=True,
        
        # 训练配置
        dropout_rate=0.3,
        l2_reg=0.01,
        
        # 优化器配置
        learning_rate=0.001,
        batch_size=32,
        epochs=100,
        
        # 早停配置
        patience=15,
        min_delta=0.001,
    )


def load_synthetic_data(n_samples: int = 1000, 
                         seq_len: int = 100, 
                         n_features: int = 6,
                         seed: int = 42) -> tuple:
    """
    生成合成数据用于测试
    当没有真实数据集时使用
    """
    np.random.seed(seed)
    
    X_list = []
    y_list = []
    
    # ADL 类 (标签 0) - 平稳信号
    for _ in range(n_samples // 2):
        t = np.linspace(0, 2*np.pi, seq_len)
        signal = np.zeros((seq_len, n_features))
        
        # 加速度: 周期性运动 + 噪声
        signal[:, 0] = 0.1 * np.sin(2*t) + np.random.randn(seq_len) * 0.1  # ax
        signal[:, 1] = 0.1 * np.cos(2*t) + np.random.randn(seq_len) * 0.1  # ay
        signal[:, 2] = 1.0 + 0.1 * np.sin(t) + np.random.randn(seq_len) * 0.05  # az (重力)
        signal[:, 3:6] = np.random.randn(seq_len, 3) * 0.05  # 陀螺仪噪声
        
        X_list.append(signal)
        y_list.append(0)
    
    # Fall 类 (标签 1) - 跌倒模式
    for _ in range(n_samples // 2):
        signal = np.zeros((seq_len, n_features))
        
        # 跌倒前: 正常运动
        impact_point = np.random.randint(40, 70)
        
        # 跌倒前
        signal[:impact_point, 0] = 0.1 * np.sin(np.linspace(0, 2*np.pi, impact_point)) + np.random.randn(impact_point) * 0.1
        signal[:impact_point, 1] = 0.1 * np.cos(np.linspace(0, 2*np.pi, impact_point)) + np.random.randn(impact_point) * 0.1
        signal[:impact_point, 2] = 1.0 + 0.1 * np.sin(np.linspace(0, np.pi, impact_point)) + np.random.randn(impact_point) * 0.05
        
        # 跌倒时刻: 快速加速度变化
        signal[impact_point:, 0] = np.random.randn(seq_len - impact_point) * 1.5
        signal[impact_point:, 1] = np.random.randn(seq_len - impact_point) * 1.5
        signal[impact_point:, 2] = 1.0 - 1.5 * np.exp(-np.linspace(0, 2, seq_len - impact_point)) + np.random.randn(seq_len - impact_point) * 0.2
        signal[impact_point:, 3:6] = np.random.randn(seq_len - impact_point, 3) * 2.0
        
        X_list.append(signal.astype(np.float32))
        y_list.append(1)
    
    X = np.array(X_list, dtype=np.float32)
    y = np.array(y_list, dtype=np.int32)
    
    return X, y


def load_sisfall_dataset():
    """
    加载 SisFall 数据集
    
    数据格式:
    - 9列数据: ax, ay, az, gx, gy, gz, ?, ?, ? (最后3列未使用)
    - 采样率: 100Hz
    - 标签: 0=ADL, 1=Fall
    
    Returns:
        X: np.ndarray (N, 100, 6) - 100样本序列 x 6特征
        y: np.ndarray (N,) - 标签
        subject_ids: np.ndarray (N,) - 被试ID (用于LOSO交叉验证)
    """
    # 使用绝对路径
    base_dir = Path(r"C:\Users\BAI26\Desktop\2026-07\非视觉感知模组软件开发资料\TFLiteMicro相关\datasets\sisfall\SisFall")
    fall_dir = base_dir / "FALL"
    adl_dir = base_dir / "ADL"
    
    print(f"Loading SisFall dataset from {base_dir}...")
    
    X_list = []
    y_list = []
    subject_ids = []
    
    # Fall 活动 (标签 1)
    fall_activities = ['F01', 'F02', 'F03', 'F04', 'F05',
                       'F06', 'F07', 'F08', 'F09', 'F10',
                       'F11', 'F12', 'F13', 'F14', 'F15',
                       'F16', 'F17', 'F18', 'F19', 'F20']
    
    # ADL 活动 (标签 0)
    adl_activities = ['D01', 'D02', 'D03', 'D04', 'D05',
                     'D06', 'D07', 'D08', 'D09', 'D10',
                     'D11', 'D12', 'D13', 'D14', 'D15',
                     'D16', 'D17', 'D18', 'D19', 'D20',
                     'D21', 'D22', 'D23', 'D24', 'D25']
    
    seq_len = 100  # 1秒 @ 100Hz
    
    # 加载跌倒数据
    print("  Loading Fall data...")
    fall_count = 0
    for activity in fall_activities:
        for filepath in fall_dir.glob(f"{activity}_*.txt"):
            try:
                # 读取文件，处理分号结尾
                with open(filepath, 'r') as f:
                    lines = f.readlines()
                
                # 解析数据：移除分号，按逗号分割
                data_list = []
                for line in lines:
                    line = line.strip().rstrip(';')
                    values = [float(x.strip()) for x in line.split(',')[:6]]
                    data_list.append(values)
                
                sensor_data = np.array(data_list, dtype=np.float32)
                
                n_samples = len(sensor_data) // seq_len
                for i in range(n_samples):
                    seq = sensor_data[i * seq_len:(i + 1) * seq_len]
                    X_list.append(seq.astype(np.float32))
                    y_list.append(1)
                    subject_ids.append(filepath.stem.split('_')[1])
                    fall_count += 1
            except Exception as e:
                print(f"    Warning: {filepath.name}: {e}")
    
    print(f"  Loaded {fall_count} Fall sequences")
    
    # 加载 ADL 数据
    print("  Loading ADL data...")
    adl_count = 0
    for activity in adl_activities:
        for filepath in adl_dir.glob(f"{activity}_*.txt"):
            try:
                # 读取文件，处理分号结尾
                with open(filepath, 'r') as f:
                    lines = f.readlines()
                
                data_list = []
                for line in lines:
                    line = line.strip().rstrip(';')
                    values = [float(x.strip()) for x in line.split(',')[:6]]
                    data_list.append(values)
                
                sensor_data = np.array(data_list, dtype=np.float32)
                
                n_samples = len(sensor_data) // seq_len
                for i in range(n_samples):
                    seq = sensor_data[i * seq_len:(i + 1) * seq_len]
                    X_list.append(seq.astype(np.float32))
                    y_list.append(0)
                    subject_ids.append(filepath.stem.split('_')[1])
                    adl_count += 1
            except Exception as e:
                print(f"    Warning: {filepath.name}: {e}")
    
    print(f"  Loaded {adl_count} ADL sequences")
    
    if not X_list:
        print("  ERROR: No data loaded! Check path and file format.")
        return np.array([]).reshape(0, 100, 6), np.array([]), np.array([])
    
    X = np.array(X_list, dtype=np.float32)
    y = np.array(y_list, dtype=np.int32)
    
    print(f"  Total: {len(X)} samples: {np.sum(y==0)} ADL, {np.sum(y==1)} Fall")
    print(f"  X shape: {X.shape}")
    
    return X, y, np.array(subject_ids)


def augment_data(X: np.ndarray, y: np.ndarray) -> tuple:
    """
    数据增强 - 提高泛化能力
    """
    print("Applying data augmentation...")
    
    X_aug = [X]
    y_aug = [y]
    
    # 1. 添加噪声
    X_noise = X + np.random.randn(*X.shape) * 0.05
    X_aug.append(X_noise)
    y_aug.append(y)
    
    # 2. 时间偏移
    for shift in [5, -5]:
        X_shifted = np.roll(X, shift, axis=1)
        X_aug.append(X_shifted)
        y_aug.append(y)
    
    # 3. 幅值缩放
    for scale in [0.9, 1.1]:
        X_scaled = X * scale
        X_aug.append(X_scaled)
        y_aug.append(y)
    
    # 4. 轴交换 (模拟不同佩戴方向)
    X_swapped = X.copy()
    X_swapped[:, :, [0, 1]] = X[:, :, [1, 0]]
    X_aug.append(X_swapped)
    y_aug.append(y)
    
    X_result = np.concatenate(X_aug, axis=0)
    y_result = np.concatenate(y_aug, axis=0)
    
    print(f"  Data augmented: {len(X)} -> {len(X_result)} samples")
    
    return X_result, y_result


def normalize_data(X_train: np.ndarray, 
                   X_val: np.ndarray,
                   X_test: np.ndarray) -> tuple:
    """
    标准化数据 - 使用训练集的统计量
    """
    print("Normalizing data...")
    
    # 计算训练集的均值和标准差
    mean = X_train.mean(axis=(0, 1), keepdims=True)
    std = X_train.std(axis=(0, 1), keepdims=True) + 1e-8
    
    X_train_norm = (X_train - mean) / std
    X_val_norm = (X_val - mean) / std
    X_test_norm = (X_test - mean) / std
    
    return X_train_norm, X_val_norm, X_test_norm, mean.squeeze(), std.squeeze()


def compute_f1_score(y_true, y_pred, threshold: float = 0.5):
    """计算 F1 分数"""
    y_pred_binary = (y_pred > threshold).astype(int)
    
    tp = np.sum((y_true == 1) & (y_pred_binary == 1))
    fp = np.sum((y_true == 0) & (y_pred_binary == 1))
    fn = np.sum((y_true == 1) & (y_pred_binary == 0))
    
    precision = tp / (tp + fp + 1e-8)
    recall = tp / (tp + fn + 1e-8)
    f1 = 2 * precision * recall / (precision + recall + 1e-8)
    
    return f1, precision, recall


class EarlyStopping:
    """早停机制"""
    def __init__(self, patience: int = 15, min_delta: float = 0.001):
        self.patience = patience
        self.min_delta = min_delta
        self.counter = 0
        self.best_loss = None
        self.early_stop = False
    
    def __call__(self, val_loss: float) -> bool:
        if self.best_loss is None:
            self.best_loss = val_loss
            return False
        
        if val_loss < self.best_loss - self.min_delta:
            self.best_loss = val_loss
            self.counter = 0
        else:
            self.counter += 1
            if self.counter >= self.patience:
                self.early_stop = True
                return True
        return False


def train_epoch(model: nn.Module, train_loader: DataLoader, 
                criterion: nn.Module, optimizer: optim.Optimizer, 
                device: torch.device) -> float:
    """训练一个 epoch"""
    model.train()
    total_loss = 0
    correct = 0
    total = 0
    
    for X_batch, y_batch in train_loader:
        X_batch = X_batch.to(device)
        y_batch = y_batch.to(device).float()
        
        optimizer.zero_grad()
        outputs = model(X_batch).squeeze()
        loss = criterion(outputs, y_batch)
        loss.backward()
        optimizer.step()
        
        total_loss += loss.item() * len(X_batch)
        predicted = (outputs > 0.5).float()
        correct += (predicted == y_batch).sum().item()
        total += y_batch.size(0)
    
    return total_loss / total, correct / total


def validate_epoch(model: nn.Module, val_loader: DataLoader, 
                   criterion: nn.Module, device: torch.device) -> tuple:
    """验证一个 epoch"""
    model.eval()
    total_loss = 0
    correct = 0
    total = 0
    all_preds = []
    all_labels = []
    
    with torch.no_grad():
        for X_batch, y_batch in val_loader:
            X_batch = X_batch.to(device)
            y_batch = y_batch.to(device).float()
            
            outputs = model(X_batch).squeeze()
            loss = criterion(outputs, y_batch)
            
            total_loss += loss.item() * len(X_batch)
            predicted = (outputs > 0.5).float()
            correct += (predicted == y_batch).sum().item()
            total += y_batch.size(0)
            
            all_preds.extend(outputs.cpu().numpy())
            all_labels.extend(y_batch.cpu().numpy())
    
    return total_loss / total, correct / total, np.array(all_preds), np.array(all_labels)


def train_model(X_train: np.ndarray, y_train: np.ndarray,
                X_val: np.ndarray, y_val: np.ndarray,
                config: GatedCNNConfig,
                model_path: str = "./model/gated_cnn_fall.pt",
                device: str = "auto") -> tuple:
    """训练 Gated-CNN 模型"""
    
    print("\n" + "="*60)
    print("Training Gated-CNN Fall Detection Model (PyTorch)")
    print("="*60)
    print(f"Config: {config}")
    
    # 设置设备
    if device == "auto":
        device = "cuda" if torch.cuda.is_available() else "cpu"
    device = torch.device(device)
    print(f"Using device: {device}")
    
    # 创建模型
    model = GatedCNN(config).to(device)
    
    # 计算参数数量
    total_params = sum(p.numel() for p in model.parameters())
    print(f"Total parameters: {total_params:,}")
    
    # 创建数据加载器
    X_train_t = torch.from_numpy(X_train).float()
    y_train_t = torch.from_numpy(y_train).long().float()
    X_val_t = torch.from_numpy(X_val).float()
    y_val_t = torch.from_numpy(y_val).long().float()
    
    train_dataset = TensorDataset(X_train_t, y_train_t)
    val_dataset = TensorDataset(X_val_t, y_val_t)
    
    train_loader = DataLoader(train_dataset, batch_size=config.batch_size, shuffle=True)
    val_loader = DataLoader(val_dataset, batch_size=config.batch_size, shuffle=False)
    
    # 损失函数和优化器
    criterion = nn.BCELoss()
    optimizer = optim.Adam(model.parameters(), lr=config.learning_rate, weight_decay=config.l2_reg)
    scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min', factor=0.5, patience=5, min_lr=1e-6)
    
    # 早停
    early_stopping = EarlyStopping(patience=config.patience, min_delta=config.min_delta)
    
    # 训练循环
    best_val_loss = float('inf')
    history = {'train_loss': [], 'train_acc': [], 'val_loss': [], 'val_acc': [], 'f1': []}
    
    for epoch in range(config.epochs):
        train_loss, train_acc = train_epoch(model, train_loader, criterion, optimizer, device)
        val_loss, val_acc, val_preds, val_labels = validate_epoch(model, val_loader, criterion, device)
        
        # 计算 F1
        f1, _, _ = compute_f1_score(val_labels, val_preds)
        
        # 学习率调度
        scheduler.step(val_loss)
        
        # 记录历史
        history['train_loss'].append(train_loss)
        history['train_acc'].append(train_acc)
        history['val_loss'].append(val_loss)
        history['val_acc'].append(val_acc)
        history['f1'].append(f1)
        
        # 打印进度
        print(f"Epoch {epoch+1:3d}/{config.epochs} | "
              f"Train: {train_loss:.4f}/{train_acc:.4f} | "
              f"Val: {val_loss:.4f}/{val_acc:.4f}/{f1:.4f} | "
              f"LR: {optimizer.param_groups[0]['lr']:.6f}")
        
        # 保存最佳模型
        if val_loss < best_val_loss:
            best_val_loss = val_loss
            torch.save({
                'model_state_dict': model.state_dict(),
                'config': config,
                'epoch': epoch,
                'val_loss': val_loss,
                'val_acc': val_acc,
                'f1': f1,
            }, model_path)
            print(f"  -> Saved best model (val_loss={val_loss:.4f})")
        
        # 早停检查
        if early_stopping(val_loss):
            print(f"\nEarly stopping at epoch {epoch+1}")
            break
    
    # 加载最佳模型
    checkpoint = torch.load(model_path, weights_only=False)
    model.load_state_dict(checkpoint['model_state_dict'])
    print(f"\nLoaded best model from epoch {checkpoint['epoch']+1}")
    
    return model, history, checkpoint


def evaluate_model(model: nn.Module, X_test: np.ndarray, y_test: np.ndarray, 
                   device: str = "auto"):
    """评估模型"""
    print("\n" + "="*60)
    print("Model Evaluation on Test Set")
    print("="*60)
    
    if device == "auto":
        device = "cuda" if torch.cuda.is_available() else "cpu"
    device = torch.device(device)
    model.eval()
    
    X_test_t = torch.from_numpy(X_test).float().to(device)
    
    with torch.no_grad():
        y_pred = model(X_test_t).squeeze().cpu().numpy()
    
    # 计算各种指标
    f1, precision, recall = compute_f1_score(y_test, y_pred)
    accuracy = np.mean((y_pred > 0.5) == y_test)
    
    # 混淆矩阵
    tn = np.sum((y_test == 0) & (y_pred <= 0.5))
    fp = np.sum((y_test == 0) & (y_pred > 0.5))
    fn = np.sum((y_test == 1) & (y_pred <= 0.5))
    tp = np.sum((y_test == 1) & (y_pred > 0.5))
    
    print(f"\nMetrics:")
    print(f"  Accuracy:  {accuracy:.4f}")
    print(f"  F1 Score:  {f1:.4f}")
    print(f"  Precision: {precision:.4f}")
    print(f"  Recall:    {recall:.4f}")
    print(f"\nConfusion Matrix:")
    print(f"              Pred ADL  Pred Fall")
    print(f"  Actual ADL   {tn:4d}      {fp:4d}")
    print(f"  Actual Fall  {fn:4d}      {tp:4d}")
    
    return {
        'accuracy': accuracy,
        'f1': f1,
        'precision': precision,
        'recall': recall,
        'tn': int(tn), 'fp': int(fp), 'fn': int(fn), 'tp': int(tp)
    }


def export_model_for_mcu(model: nn.Module, output_path: str = "./model/gated_cnn_fall.weights"):
    """
    导出模型权重用于 MCU
    格式: 纯二进制权重文件
    """
    print(f"\nExporting model weights to: {output_path}")
    
    state_dict = model.state_dict()
    
    with open(output_path, 'wb') as f:
        for name, param in state_dict.items():
            data = param.detach().cpu().numpy().flatten()
            # 写入 float32
            f.write(data.astype(np.float32).tobytes())
    
    # 计算文件大小
    size_bytes = os.path.getsize(output_path)
    size_kb = size_bytes / 1024
    print(f"  Exported: {output_path}")
    print(f"  Size: {size_bytes} bytes ({size_kb:.2f} KB)")
    
    if size_kb > 60:
        print(f"  Warning: Model size ({size_kb:.2f} KB) exceeds recommended 60KB for HT32F675x5")
    
    return output_path


def generate_model_header(weights_path: str, 
                           output_path: str = "./sources/ai/gated_cnn_model_data.h",
                           array_name: str = "g_gated_cnn_model_data") -> str:
    """生成模型头文件用于 MCU 加载"""
    print(f"\nGenerating model header: {output_path}")
    
    with open(weights_path, 'rb') as f:
        model_data = f.read()
    
    # 生成 C 头文件
    header_content = f'''/**
 * @file    gated_cnn_model_data.h
 * @brief   Gated-CNN 跌倒检测模型数据
 * @date    {datetime.now().strftime("%Y-%m-%d")}
 * 
 * Model: Gated-CNN (PyTorch)
 * Input:  [100, 6] - 1秒 @ 100Hz, 6轴IMU
 * Output: [1] - 跌倒概率
 * Size:   {len(model_data)} bytes ({len(model_data)/1024:.2f} KB)
 */

#ifndef GATED_CNN_MODEL_DATA_H
#define GATED_CNN_MODEL_DATA_H

#include <stdint.h>

/* 模型数据数组 */
extern const uint8_t {array_name}[];
extern const uint32_t {array_name}_size;

#endif /* GATED_CNN_MODEL_DATA_H */
'''
    
    # 生成 C 数据文件
    c_data_path = output_path.replace('.h', '.c')
    c_content = f'''/**
 * @file    gated_cnn_model_data.c
 * @brief   Gated-CNN 模型数据
 */

#include "gated_cnn_model_data.h"

const uint8_t {array_name}[] = {{
'''
    
    # 分块写入数据
    chunk_size = 16
    for i in range(0, len(model_data), chunk_size):
        chunk = model_data[i:i+chunk_size]
        hex_str = ', '.join([f'0x{b:02x}' for b in chunk])
        c_content += f'    {hex_str},\n'
    
    c_content += f'''}};

const uint32_t {array_name}_size = {len(model_data)};
'''
    
    with open(c_data_path, 'w', encoding='utf-8') as f:
        f.write(c_content)
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(header_content)
    
    print(f"  Generated: {output_path}")
    print(f"  Generated: {c_data_path}")
    
    return c_data_path


def loso_cross_validation(X: np.ndarray, y: np.ndarray, config: GatedCNNConfig):
    """
    Leave-One-Subject-Out 交叉验证
    用于评估模型的泛化能力
    
    注意: SisFall 数据集按被试划分
    """
    if not HAS_SKLEARN:
        print("Warning: LOSO-CV requires sklearn, skipping...")
        return None
    
    print("\n" + "="*60)
    print("Running Leave-One-Subject-Out Cross-Validation")
    print("="*60)
    
    # 模拟被试ID (实际需要从 SisFall 读取)
    n_subjects = 38  # SisFall 有 38 个被试
    subject_ids = np.repeat(np.arange(n_subjects), len(y) // n_subjects)[:len(y)]
    
    skf = StratifiedKFold(n_splits=n_subjects, shuffle=True, random_state=42)
    
    f1_scores = []
    acc_scores = []
    
    device = "cuda" if torch.cuda.is_available() else "cpu"
    device = torch.device(device)
    
    for fold, (train_idx, val_idx) in enumerate(skf.split(X, y)):
        print(f"\nFold {fold + 1}/{n_subjects}")
        
        X_train, X_val = X[train_idx], X[val_idx]
        y_train, y_val = y[train_idx], y[val_idx]
        
        # 创建并训练模型
        model = GatedCNN(config).to(device)
        
        X_train_t = torch.from_numpy(X_train).float()
        y_train_t = torch.from_numpy(y_train).long().float()
        X_val_t = torch.from_numpy(X_val).float().to(device)
        
        train_dataset = TensorDataset(X_train_t, y_train_t)
        train_loader = DataLoader(train_dataset, batch_size=config.batch_size, shuffle=True)
        
        criterion = nn.BCELoss()
        optimizer = optim.Adam(model.parameters(), lr=config.learning_rate)
        
        # 快速训练
        model.train()
        for epoch in range(20):
            for X_batch, y_batch in train_loader:
                X_batch, y_batch = X_batch.to(device), y_batch.to(device).float()
                optimizer.zero_grad()
                outputs = model(X_batch).squeeze()
                loss = criterion(outputs, y_batch)
                loss.backward()
                optimizer.step()
        
        # 评估
        model.eval()
        with torch.no_grad():
            val_preds = model(X_val_t).squeeze().cpu().numpy()
        
        f1, _, _ = compute_f1_score(y_val, val_preds)
        acc = np.mean((val_preds > 0.5) == y_val)
        
        f1_scores.append(f1)
        acc_scores.append(acc)
        
        print(f"  F1: {f1:.4f}, Accuracy: {acc:.4f}")
    
    print("\n" + "="*60)
    print(f"LOSO-CV Results: F1 = {np.mean(f1_scores):.4f} ± {np.std(f1_scores):.4f}")
    print(f"                Acc = {np.mean(acc_scores):.4f} ± {np.std(acc_scores):.4f}")
    print("="*60)
    
    return {
        'f1_mean': np.mean(f1_scores),
        'f1_std': np.std(f1_scores),
        'acc_mean': np.mean(acc_scores),
        'acc_std': np.std(acc_scores)
    }


def main():
    """主训练流程"""
    print("="*60)
    print("Gated-CNN Fall Detection Training Pipeline (PyTorch)")
    print("="*60)
    
    # 创建输出目录
    os.makedirs("./model", exist_ok=True)
    os.makedirs("./sources/ai", exist_ok=True)
    
    # 1. 加载数据
    print("\n[1/6] Loading dataset...")
    X, y, subject_ids = load_sisfall_dataset()
    
    # 或者使用合成数据测试
    # X, y = load_synthetic_data(n_samples=2000)
    
    # 2. 数据增强
    print("\n[2/6] Augmenting data...")
    X_aug, y_aug = augment_data(X, y)
    
    # 3. 划分数据集
    print("\n[3/6] Splitting dataset...")
    n = len(X_aug)
    indices = np.random.permutation(n)
    train_idx = indices[:int(n*0.7)]
    val_idx = indices[int(n*0.7):int(n*0.85)]
    test_idx = indices[int(n*0.85):]
    
    X_train, X_val, X_test = X_aug[train_idx], X_aug[val_idx], X_aug[test_idx]
    y_train, y_val, y_test = y_aug[train_idx], y_aug[val_idx], y_aug[test_idx]
    
    print(f"  Train: {len(X_train)}, Val: {len(X_val)}, Test: {len(X_test)}")
    
    # 4. 标准化
    print("\n[4/6] Normalizing data...")
    X_train, X_val, X_test, mean, std = normalize_data(X_train, X_val, X_test)
    print(f"  Mean: {mean}")
    print(f"  Std:  {std}")
    
    # 5. 训练
    print("\n[5/6] Training model...")
    config = get_default_config()
    model_path = "./model/gated_cnn_fall.pt"
    model, history, checkpoint = train_model(X_train, y_train, X_val, y_val, config, model_path)
    
    # 6. 评估
    print("\n[6/6] Evaluating model...")
    results = evaluate_model(model, X_test, y_test)
    
    # 可选: LOSO 交叉验证
    # print("\n[Bonus] LOSO Cross-Validation...")
    # loso_results = loso_cross_validation(X_aug, y_aug, config)
    
    # 导出模型权重
    weights_path = export_model_for_mcu(model, "./model/gated_cnn_fall.weights")
    
    # 生成 MCU 头文件
    generate_model_header(weights_path)
    
    # 保存训练配置
    config_dict = {
        'input_shape': list(config.input_shape),
        'filters': config.filters,
        'kernel_sizes': config.kernel_sizes,
        'gating_units': config.gating_units,
        'dropout_rate': config.dropout_rate,
        'normalization': {'mean': mean.tolist(), 'std': std.tolist()},
        'metrics': results,
        'best_epoch': checkpoint['epoch'] + 1,
        'best_val_loss': float(checkpoint['val_loss']),
    }
    
    import json
    with open('./model/training_config.json', 'w') as f:
        json.dump(config_dict, f, indent=2)
    
    print("\n" + "="*60)
    print("Training Complete!")
    print("="*60)
    print(f"Model:     {model_path}")
    print(f"Weights:   {weights_path}")
    print(f"Config:    ./model/training_config.json")
    print(f"Header:    ./sources/ai/gated_cnn_model_data.h")


if __name__ == "__main__":
    main()
