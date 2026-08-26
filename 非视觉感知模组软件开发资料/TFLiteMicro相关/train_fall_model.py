"""
Fall Detection Model Training Script
====================================
使用 LSM6DSO 跌倒检测数据集训练 TFLite 模型

数据集: fall-detection-dataset-IMU
传感器: LSM6DSO (与固件相同)
采样率: 100 Hz

输出:
    - train_fall_model.tflite  (TFLite 模型)
    - fall_model_data.h        (C 头文件，供固件使用)
"""

import os
import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow import keras
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# ============================================================================
# 配置参数 (需与 app_cfg.h 保持一致)
# ============================================================================
WINDOW_SIZE = 128          # 滑动窗口大小 (samples)
STRIDE = 32                # 滑动步长 (samples) - 更小的步长产生更多样本
SAMPLING_RATE = 100        # Hz

# 数据路径 - 指向解压后的数据集目录
DATASET_DIR = r"C:\Users\BAI26\Desktop\2026-07\非视觉感知模组软件开发资料\TFLiteMicro相关\fall-dataset\fall-detection-dataset-IMU-main"
FALL_DIR = os.path.join(DATASET_DIR, "Fall Events")
ADL_DIR = os.path.join(DATASET_DIR, "Daily Activities")

# 模型输出
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
MODEL_OUTPUT_DIR = os.path.join(BASE_DIR, "output")
TFLITE_MODEL_PATH = os.path.join(MODEL_OUTPUT_DIR, "train_fall_model.tflite")
HEADER_FILE_PATH = os.path.join(MODEL_OUTPUT_DIR, "fall_model_data.h")

# ============================================================================
# 数据加载
# ============================================================================
def load_dataset():
    """加载所有 xlsx 文件并合并"""
    all_data = []
    all_labels = []

    # 加载跌倒数据 (label = 1)
    fall_files = [
        "01.Forward Fall.xlsx",
        "02.Backward Fall.xlsx",
        "03.Right-side Fall.xlsx",
        "04.Left-side Fall.xlsx",
        "05.Forward Fall onto the Knees.xlsx",
    ]

    print(f"[INFO] 加载跌倒事件数据 ({len(fall_files)} 个文件)...")
    for f in fall_files:
        path = os.path.join(FALL_DIR, f)
        if os.path.exists(path):
            df = pd.read_excel(path, header=None)
            features = df.iloc[:, 1:7].values.astype(np.float32)
            all_data.append(features)
            all_labels.extend([1] * len(features))
            print(f"    - {f}: {len(features)} 样本")
        else:
            print(f"    [WARN] 文件不存在: {f}")

    # 加载日常活动数据 (label = 0)
    adl_files = [
        "01.Going Upstairs.xlsx",
        "02.Going Downstairs.xlsx",
        "03.Walking.xlsx",
        "04.Running.xlsx",
        "05.Stepping.xlsx",
        "06.Sitting Down.xlsx",
        "07.Quickly Sitting Down.xlsx",
        "08.Jumping.xlsx",
    ]

    print(f"[INFO] 加载日常活动数据 ({len(adl_files)} 个文件)...")
    for f in adl_files:
        path = os.path.join(ADL_DIR, f)
        if os.path.exists(path):
            df = pd.read_excel(path, header=None)
            features = df.iloc[:, 1:7].values.astype(np.float32)
            all_data.append(features)
            all_labels.extend([0] * len(features))
            print(f"    - {f}: {len(features)} 样本")
        else:
            print(f"    [WARN] 文件不存在: {f}")

    # 合并所有数据
    X = np.vstack(all_data)
    y = np.array(all_labels)

    print(f"[INFO] 总计: {len(X)} 样本, 跌倒: {np.sum(y)} / 日常: {len(y) - np.sum(y)}")

    return X, y


def create_sliding_windows(X, y, window_size, stride):
    """创建滑动窗口数据集"""
    windows = []
    labels = []

    for i in range(0, len(X) - window_size + 1, stride):
        window = X[i:i + window_size]
        window_labels = y[i:i + window_size]
        label = 1 if np.sum(window_labels) > (window_size / 2) else 0

        windows.append(window)
        labels.append(label)

    return np.array(windows), np.array(labels)


# ============================================================================
# 数据预处理
# ============================================================================
def preprocess_data(X, y, test_size=0.2):
    """数据预处理: 标准化 + 分层划分训练/测试集"""
    print("[INFO] 创建滑动窗口...")

    # 创建滑动窗口
    X_windows, y_windows = create_sliding_windows(X, y, WINDOW_SIZE, STRIDE)

    print(f"[INFO] 滑动窗口数量: {len(X_windows)}")
    print(f"       跌倒窗口: {np.sum(y_windows)}, 日常窗口: {len(y_windows) - np.sum(y_windows)}")

    # 使用分层采样划分数据集
    X_train, X_test, y_train, y_test = train_test_split(
        X_windows, y_windows,
        test_size=test_size,
        random_state=42,
        stratify=y_windows  # 确保训练集和测试集都有跌倒样本
    )

    # 标准化
    scaler = StandardScaler()
    X_train_2d = X_train.reshape(-1, 6)
    X_test_2d = X_test.reshape(-1, 6)

    X_train_scaled_2d = scaler.fit_transform(X_train_2d)
    X_test_scaled_2d = scaler.transform(X_test_2d)

    X_train = X_train_scaled_2d.reshape(X_train.shape)
    X_test = X_test_scaled_2d.reshape(X_test.shape)

    print(f"[INFO] 训练集: {len(X_train)} (跌倒: {np.sum(y_train)}, 日常: {len(y_train) - np.sum(y_train)})")
    print(f"[INFO] 测试集: {len(X_test)} (跌倒: {np.sum(y_test)}, 日常: {len(y_test) - np.sum(y_test)})")

    return X_train, X_test, y_train, y_test, scaler


# ============================================================================
# 模型构建 - 使用 1D CNN (适合嵌入式)
# ============================================================================
def build_model(input_shape):
    """构建 1D CNN 模型 (适合 TFLite Micro)"""
    model = keras.Sequential([
        keras.layers.Input(shape=input_shape),

        # 1D CNN 层 - 提取时序特征
        keras.layers.Conv1D(32, kernel_size=5, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.MaxPooling1D(pool_size=2),

        keras.layers.Conv1D(64, kernel_size=5, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.MaxPooling1D(pool_size=2),

        keras.layers.Conv1D(32, kernel_size=3, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.GlobalAveragePooling1D(),

        # 全连接层
        keras.layers.Dense(16, activation='relu'),
        keras.layers.Dropout(0.3),

        # 输出层
        keras.layers.Dense(1, activation='sigmoid')
    ])

    model.compile(
        optimizer=keras.optimizers.Adam(learning_rate=0.001),
        loss='binary_crossentropy',
        metrics=['accuracy']
    )

    model.summary()
    return model


# ============================================================================
# 模型训练
# ============================================================================
def train_model(model, X_train, y_train, X_test, y_test, epochs=100, batch_size=32):
    """训练模型"""
    print("[INFO] 开始训练...")

    callbacks = [
        keras.callbacks.EarlyStopping(
            monitor='val_loss',
            patience=15,
            restore_best_weights=True
        ),
        keras.callbacks.ReduceLROnPlateau(
            monitor='val_loss',
            factor=0.5,
            patience=7,
            min_lr=1e-6
        )
    ]

    history = model.fit(
        X_train, y_train,
        epochs=epochs,
        batch_size=batch_size,
        validation_split=0.15,
        callbacks=callbacks
    )

    # 评估
    print("\n[INFO] 模型评估:")
    test_loss, test_acc = model.evaluate(X_test, y_test, verbose=0)
    print(f"    测试集损失: {test_loss:.4f}")
    print(f"    测试集准确率: {test_acc:.4f}")

    # 混淆矩阵
    from sklearn.metrics import confusion_matrix, classification_report
    y_pred = (model.predict(X_test, verbose=0) > 0.5).astype(int)
    print("\n混淆矩阵:")
    cm = confusion_matrix(y_test, y_pred)
    print(f"           预测ADL  预测Fall")
    print(f"实际ADL      {cm[0,0]:5d}     {cm[0,1]:5d}")
    print(f"实际Fall     {cm[1,0]:5d}     {cm[1,1]:5d}")
    print("\n分类报告:")
    print(classification_report(y_test, y_pred, target_names=['ADL', 'Fall']))

    return history


# ============================================================================
# TFLite 转换
# ============================================================================
def convert_to_tflite(model, X_sample):
    """转换为 TFLite 模型 (FP32)"""
    print("[INFO] 转换为 TFLite 模型...")

    # 转换为 TFLite
    converter = tf.lite.TFLiteConverter.from_keras_model(model)
    converter.optimizations = [tf.lite.Optimize.DEFAULT]

    tflite_model = converter.convert()

    # 保存
    os.makedirs(MODEL_OUTPUT_DIR, exist_ok=True)
    with open(TFLITE_MODEL_PATH, 'wb') as f:
        f.write(tflite_model)

    print(f"[INFO] TFLite 模型已保存: {TFLITE_MODEL_PATH}")
    print(f"       模型大小: {len(tflite_model) / 1024:.2f} KB")

    return tflite_model


# ============================================================================
# 生成 C 头文件
# ============================================================================
def generate_header_file(tflite_model, model_name="fall_model"):
    """生成 C 头文件供固件使用"""
    print("[INFO] 生成 C 头文件...")

    # 将模型字节转换为 C 数组
    model_bytes = list(tflite_model)

    # 分成每行 16 字节，便于阅读
    lines = []
    for i in range(0, len(model_bytes), 16):
        chunk = model_bytes[i:i+16]
        hex_str = ', '.join([f'0x{b:02X}' for b in chunk])
        lines.append(f'    {hex_str}')

    header_content = f'''/*************************************************************************************************************
 * @file    fall_model_data.h
 * @brief   跌倒检测 TFLite 模型数据
 * @author  Auto-generated by train_fall_model.py
 * @date    {pd.Timestamp.now().strftime('%Y-%m-%d')}
 * @version V1.0
 *
 * 模型说明:
 *   - 架构: 1D CNN (适合 TFLite Micro)
 *   - 输入: float [{WINDOW_SIZE}, 6] - 6轴IMU数据
 *   - 输出: float [1] - 跌倒概率 (0.0-0.5=正常, 0.5-1.0=跌倒)
 *
 ************************************************************************************************************/

#ifndef FALL_MODEL_DATA_H
#define FALL_MODEL_DATA_H

#include <stdint.h>

/**
 * @brief  滑动窗口大小 (样本数)
 * @note   需与 app_cfg.h 中的 FALL_DETECT_WINDOW_SIZE 保持一致
 */
#define FALL_MODEL_WINDOW_SIZE    ({WINDOW_SIZE})

/**
 * @brief  模型输入特征数量
 * @note   6轴: accX, accY, accZ, gyroX, gyroY, gyroZ
 */
#define FALL_MODEL_INPUT_FEATURES (6)

/**
 * @brief  模型参数字节数
 */
#define FALL_MODEL_DATA_SIZE      ({len(model_bytes)})

/**
 * @brief  跌倒检测阈值
 * @note   需与 app_cfg.h 中的 FALL_DETECT_THRESHOLD 保持一致
 */
#define FALL_DETECT_THRESHOLD     (0.6f)

/**
 * @brief  跌倒检测 TFLite 模型数据
 * @note   模型大小: {len(model_bytes)} bytes ({len(tflite_model) / 1024:.2f} KB)
 */
const uint8_t {model_name}_data[] = {{
{chr(10).join(lines)}
}};

#endif /* FALL_MODEL_DATA_H */
'''

    with open(HEADER_FILE_PATH, 'w', encoding='utf-8') as f:
        f.write(header_content)

    print(f"[INFO] C 头文件已生成: {HEADER_FILE_PATH}")


# ============================================================================
# 主函数
# ============================================================================
def main():
    print("=" * 60)
    print("跌倒检测模型训练 (1D CNN)")
    print("=" * 60)

    # 1. 加载数据
    X, y = load_dataset()

    # 2. 预处理
    X_train, X_test, y_train, y_test, scaler = preprocess_data(X, y)

    # 3. 构建模型
    model = build_model(input_shape=(WINDOW_SIZE, 6))

    # 4. 训练
    history = train_model(model, X_train, y_train, X_test, y_test)

    # 5. 转换为 TFLite
    tflite_model = convert_to_tflite(model, X_train)

    # 6. 生成头文件
    generate_header_file(tflite_model)

    print("\n" + "=" * 60)
    print("训练完成!")
    print("=" * 60)
    print(f"输出文件:")
    print(f"  - TFLite 模型: {TFLITE_MODEL_PATH}")
    print(f"  - C 头文件:    {HEADER_FILE_PATH}")
    print("\n下一步:")
    print("  1. 将 fall_model_data.h 复制到固件目录")
    print("  2. 修改 app_cfg.h: FALL_DETECT_ENABLED = 1")
    print("  3. 重新编译并烧录固件")


if __name__ == "__main__":
    main()
