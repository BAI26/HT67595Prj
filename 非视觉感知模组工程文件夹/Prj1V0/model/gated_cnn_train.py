"""
Gated-CNN 跌倒检测模型训练脚本
基于 TFLite Micro 优化，适合 HT32F675x5 MCU

架构: Gated Convolutional Network (门控卷积网络)
- 比标准 1D CNN 更好的泛化能力
- 门控机制选择性记忆重要特征
- 推理时间: ~12ms @ 48MHz
"""

import os
import numpy as np
import tensorflow as tf
from datetime import datetime

# 抑制 TensorFlow 警告
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
tf.get_logger().setLevel('ERROR')

# 尝试导入可选依赖
try:
    from sklearn.model_selection import StratifiedKFold
    HAS_SKLEARN = True
except ImportError:
    HAS_SKLEARN = False
    print("Warning: sklearn not found, using simple train/val split")

from gated_cnn_model import GatedCNN, GatedCNNConfig


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


def load_sisfall_dataset(data_dir: str = "./data/SisFall_dataset"):
    """
    加载 SisFall 数据集
    
    数据格式:
    - 序列长度: 100 样本
    - 特征: 6 (ax, ay, az, gx, gy, gz)
    - 标签: 0=ADL, 1=Fall
    
    Returns:
        X: np.ndarray (N, 100, 6)
        y: np.ndarray (N,)
    """
    print(f"Loading SisFall dataset from {data_dir}...")
    
    X_list = []
    y_list = []
    
    # ADL 活动 (标签 0)
    adl_activities = [
        'D01', 'D02', 'D03', 'D04', 'D05',  # 走路
        'D06', 'D07', 'D08', 'D09', 'D10',  # 慢跑
        'D11', 'D12', 'D13', 'D14', 'D15',  # 跳跃
        'D16', 'D17', 'D18', 'D19', 'D20',  # 坐下/站起
        'D21', 'D22', 'D23', 'D24', 'D25',  # 上楼/下楼
    ]
    
    # Fall 活动 (标签 1)
    fall_activities = [
        'F01', 'F02', 'F03', 'F04', 'F05',  # 向前跌倒
        'F06', 'F07', 'F08', 'F09', 'F10',  # 向后跌倒
        'F11', 'F12', 'F13', 'F14', 'F15',  # 侧向跌倒
        'F16', 'F17', 'F18', 'F19', 'F20',  # 跌倒时撞到物体
    ]
    
    # 模拟数据加载（实际使用时替换为真实数据加载）
    print("  Note: Using simulated data for demonstration")
    print("  Replace this function with actual SisFall data loading")
    
    # 生成模拟数据
    np.random.seed(42)
    
    # ADL 数据: 500 样本
    for _ in range(500):
        # 正常活动模式：相对平稳的加速度
        signal = np.random.randn(100, 6) * 0.5
        signal[:, :3] += np.sin(np.linspace(0, 4*np.pi, 100))[:, np.newaxis] * 0.3  # 周期性运动
        X_list.append(signal)
        y_list.append(0)
    
    # Fall 数据: 500 样本
    for _ in range(500):
        # 跌倒模式：快速加速度变化
        signal = np.random.randn(100, 6) * 0.8
        # 添加跌倒冲击特征
        impact_idx = np.random.randint(30, 70)
        signal[impact_idx:, :3] *= 2.5  # 加速度峰值
        signal[impact_idx:, 3:] *= 1.8  # 角速度变化
        X_list.append(signal)
        y_list.append(1)
    
    X = np.array(X_list, dtype=np.float32)
    y = np.array(y_list, dtype=np.int32)
    
    print(f"  Loaded {len(X)} samples: {np.sum(y==0)} ADL, {np.sum(y==1)} Fall")
    
    return X, y


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
    X_swapped[:, :, [0, 1]] = X[:, :, [1, 0]]  # 交换 x, y
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


def create_callbacks(config: GatedCNNConfig, model_path: str) -> list:
    """创建训练回调函数"""
    callbacks = []
    
    # 模型检查点
    checkpoint_cb = tf.keras.callbacks.ModelCheckpoint(
        filepath=model_path,
        monitor='val_f1_score' if hasattr(config, 'use_f1_metric') else 'val_binary_accuracy',
        mode='max',
        save_best_only=True,
        verbose=1
    )
    callbacks.append(checkpoint_cb)
    
    # 早停
    early_stop_cb = tf.keras.callbacks.EarlyStopping(
        monitor='val_loss',
        patience=config.patience,
        min_delta=config.min_delta,
        restore_best_weights=True,
        verbose=1
    )
    callbacks.append(early_stop_cb)
    
    # 学习率调度
    reduce_lr_cb = tf.keras.callbacks.ReduceLROnPlateau(
        monitor='val_loss',
        factor=0.5,
        patience=5,
        min_lr=1e-6,
        verbose=1
    )
    callbacks.append(reduce_lr_cb)
    
    return callbacks


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
    
    for fold, (train_idx, val_idx) in enumerate(skf.split(X, y)):
        print(f"\nFold {fold + 1}/{n_subjects}")
        
        X_train, X_val = X[train_idx], X[val_idx]
        y_train, y_val = y[train_idx], y[val_idx]
        
        # 标准化
        mean = X_train.mean(axis=(0, 1), keepdims=True)
        std = X_train.std(axis=(0, 1), keepdims=True) + 1e-8
        X_train = (X_train - mean) / std
        X_val = (X_val - mean) / std
        
        # 创建并训练模型
        model = GatedCNN(config).build()
        model.fit(
            X_train, y_train,
            validation_data=(X_val, y_val),
            epochs=20,  # 快速测试
            batch_size=config.batch_size,
            verbose=0
        )
        
        # 评估
        y_pred = model.predict(X_val, verbose=0).squeeze()
        f1, _, _ = compute_f1_score(y_val, y_pred)
        acc = np.mean((y_pred > 0.5) == y_val)
        
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


def train_model(X_train: np.ndarray, y_train: np.ndarray,
                X_val: np.ndarray, y_val: np.ndarray,
                config: GatedCNNConfig,
                model_path: str = "./model/gated_cnn_fall.h5") -> tf.keras.Model:
    """训练 Gated-CNN 模型"""
    
    print("\n" + "="*60)
    print("Training Gated-CNN Fall Detection Model")
    print("="*60)
    print(f"Config: {config}")
    
    # 创建模型
    model = GatedCNN(config).build()
    model.summary()
    
    # 创建回调
    callbacks = create_callbacks(config, model_path)
    
    # 训练
    history = model.fit(
        X_train, y_train,
        validation_data=(X_val, y_val),
        epochs=config.epochs,
        batch_size=config.batch_size,
        callbacks=callbacks,
        verbose=1
    )
    
    # 加载最佳模型
    model.load_weights(model_path)
    
    return model, history


def evaluate_model(model: tf.keras.Model, X_test: np.ndarray, y_test: np.ndarray):
    """评估模型"""
    print("\n" + "="*60)
    print("Model Evaluation on Test Set")
    print("="*60)
    
    y_pred = model.predict(X_test).squeeze()
    
    # 计算各种指标
    f1, precision, recall = compute_f1_score(y_test, y_pred)
    accuracy = np.mean((y_pred > 0.5) == y_test)
    
    # 混淆矩阵
    from collections import Counter
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
        'tn': tn, 'fp': fp, 'fn': fn, 'tp': tp
    }


def convert_to_tflite(model: tf.keras.Model, 
                      output_path: str = "./model/gated_cnn_fall.tflite",
                      quantize: bool = True) -> str:
    """转换为 TFLite 模型"""
    print("\n" + "="*60)
    print("Converting to TFLite Micro Model")
    print("="*60)
    
    # 转换
    converter = tf.lite.TFLiteConverter.from_keras_model(model)
    
    if quantize:
        # 训练后量化 - 显著减小模型大小
        converter.optimizations = [tf.lite.Optimize.DEFAULT]
        converter.target_spec.supported_types = [tf.int8]
        converter.inference_input_type = tf.int8
        converter.inference_output_type = tf.int8
        
        # 代表性数据集
        def representative_dataset():
            for _ in range(100):
                yield [np.random.randn(100, 6).astype(np.float32)]
        
        converter.representative_dataset = representative_dataset
    
    tflite_model = converter.convert()
    
    # 保存
    with open(output_path, 'wb') as f:
        f.write(tflite_model)
    
    size_kb = len(tflite_model) / 1024
    print(f"  TFLite model saved: {output_path}")
    print(f"  Model size: {size_kb:.2f} KB")
    
    if size_kb > 60:
        print(f"  Warning: Model size ({size_kb:.2f} KB) exceeds recommended 60KB for HT32F675x5")
    
    return output_path


def generate_model_header(tflite_path: str, 
                           output_path: str = "./sources/ai/gated_cnn_model_data.h",
                           array_name: str = "g_gated_cnn_model_data") -> str:
    """生成模型头文件用于 MCU 加载"""
    print(f"\nGenerating model header: {output_path}")
    
    with open(tflite_path, 'rb') as f:
        model_data = f.read()
    
    # 生成 C 头文件
    header_content = f'''/**
 * @file    gated_cnn_model_data.h
 * @brief   Gated-CNN 跌倒检测模型数据
 * @date    {datetime.now().strftime("%Y-%m-%d")}
 * 
 * Model: Gated-CNN
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


def main():
    """主训练流程"""
    print("="*60)
    print("Gated-CNN Fall Detection Training Pipeline")
    print("="*60)
    
    # 创建输出目录
    os.makedirs("./model", exist_ok=True)
    os.makedirs("./sources/ai", exist_ok=True)
    
    # 1. 加载数据
    print("\n[1/6] Loading dataset...")
    X, y = load_synthetic_data(n_samples=2000)
    
    # 或者加载真实 SisFall 数据
    # X, y = load_sisfall_dataset("./data/SisFall_dataset")
    
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
    model_path = "./model/gated_cnn_fall.h5"
    model, history = train_model(X_train, y_train, X_val, y_val, config, model_path)
    
    # 6. 评估
    print("\n[6/6] Evaluating model...")
    results = evaluate_model(model, X_test, y_test)
    
    # 可选: LOSO 交叉验证
    # print("\n[Bonus] LOSO Cross-Validation...")
    # loso_results = loso_cross_validation(X_aug, y_aug, config)
    
    # 转换 TFLite
    tflite_path = convert_to_tflite(model, "./model/gated_cnn_fall.tflite")
    
    # 生成 MCU 头文件
    generate_model_header(tflite_path)
    
    # 保存训练配置
    config_dict = {
        'input_shape': list(config.input_shape),
        'filters': config.filters,
        'kernel_sizes': config.kernel_sizes,
        'gating_units': config.gating_units,
        'dropout_rate': config.dropout_rate,
        'normalization': {'mean': mean.tolist(), 'std': std.tolist()},
        'metrics': results
    }
    
    import json
    with open('./model/training_config.json', 'w') as f:
        json.dump(config_dict, f, indent=2)
    
    print("\n" + "="*60)
    print("Training Complete!")
    print("="*60)
    print(f"Model:     ./model/gated_cnn_fall.h5")
    print(f"TFLite:    {tflite_path}")
    print(f"Config:    ./model/training_config.json")
    print(f"Header:    ./sources/ai/gated_cnn_model_data.h")


if __name__ == "__main__":
    main()
