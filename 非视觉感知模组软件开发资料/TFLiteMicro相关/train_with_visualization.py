"""
Fall Detection Model Training - 带可视化版本
运行此脚本可以看到训练过程的图表
"""

import os
import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow import keras
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, classification_report
import warnings
warnings.filterwarnings('ignore')

# 设置中文字体
plt.rcParams['font.sans-serif'] = ['Microsoft YaHei', 'SimHei', 'Arial Unicode MS']
plt.rcParams['axes.unicode_minus'] = False

# ============================================================================
# 配置参数
# ============================================================================
WINDOW_SIZE = 128
STRIDE = 32
SAMPLING_RATE = 100

BASE_DIR = r"C:\Users\BAI26\Desktop\2026-07\非视觉感知模组软件开发资料\TFLiteMicro相关"

# 使用 SisFall 数据集
SISFALL_DIR = os.path.join(BASE_DIR, "datasets", "sisfall", "SisFall")
SISFALL_ADL_DIR = os.path.join(SISFALL_DIR, "ADL")
SISFALL_FALL_DIR = os.path.join(SISFALL_DIR, "FALL")

MODEL_OUTPUT_DIR = os.path.join(BASE_DIR, "output")
TFLITE_MODEL_PATH = os.path.join(MODEL_OUTPUT_DIR, "sisfall_fall_model.tflite")
HEADER_FILE_PATH = os.path.join(MODEL_OUTPUT_DIR, "fall_model_data.h")
PLOT_PATH = os.path.join(MODEL_OUTPUT_DIR, "training_results.png")
LOG_DIR = r"C:\Users\BAI26\Desktop\2026-07\logs"

# ============================================================================
# 数据加载 - SisFall 数据集
# ============================================================================
def load_dataset():
    """加载 SisFall 数据集"""
    import glob
    
    def parse_sisfall_file(filepath):
        """解析 SisFall 文件"""
        with open(filepath, 'r') as f:
            lines = f.readlines()
        
        data = []
        for line in lines:
            line = line.strip().rstrip(';').strip()
            if line:
                values = [int(x.strip()) for x in line.split(',')]
                if len(values) >= 6:
                    data.append(values[:6])
        return np.array(data, dtype=np.float32)
    
    all_data = []
    all_labels = []
    adl_count = 0
    fall_count = 0
    
    # 加载 ADL 数据 (label=0)
    adl_files = glob.glob(os.path.join(SISFALL_ADL_DIR, "*.txt"))
    print(f"[INFO] 加载日常活动数据 ({len(adl_files)} 个文件)...")
    
    for filepath in adl_files:
        try:
            features = parse_sisfall_file(filepath)
            if len(features) > 0:
                all_data.append(features)
                all_labels.extend([0] * len(features))
                adl_count += len(features)
        except Exception as e:
            pass
    
    print(f"    - ADL 样本总数: {adl_count}")
    
    # 加载 FALL 数据 (label=1)
    fall_files = glob.glob(os.path.join(SISFALL_FALL_DIR, "*.txt"))
    print(f"[INFO] 加载跌倒事件数据 ({len(fall_files)} 个文件)...")
    
    for filepath in fall_files:
        try:
            features = parse_sisfall_file(filepath)
            if len(features) > 0:
                all_data.append(features)
                all_labels.extend([1] * len(features))
                fall_count += len(features)
        except Exception as e:
            pass
    
    print(f"    - FALL 样本总数: {fall_count}")
    
    X = np.vstack(all_data)
    y = np.array(all_labels)
    print(f"[INFO] 总计: {len(X)} 样本, 跌倒: {np.sum(y)} / 日常: {len(y) - np.sum(y)}")
    return X, y


def create_sliding_windows(X, y, window_size, stride):
    windows, labels = [], []
    for i in range(0, len(X) - window_size + 1, stride):
        window = X[i:i + window_size]
        window_labels = y[i:i + window_size]
        label = 1 if np.sum(window_labels) > (window_size / 2) else 0
        windows.append(window)
        labels.append(label)
    return np.array(windows), np.array(labels)


def preprocess_data(X, y, test_size=0.2):
    print("[INFO] 创建滑动窗口...")
    X_windows, y_windows = create_sliding_windows(X, y, WINDOW_SIZE, STRIDE)
    print(f"[INFO] 滑动窗口数量: {len(X_windows)}")
    print(f"       跌倒窗口: {np.sum(y_windows)}, 日常窗口: {len(y_windows) - np.sum(y_windows)}")

    X_train, X_test, y_train, y_test = train_test_split(
        X_windows, y_windows, test_size=test_size, random_state=42, stratify=y_windows
    )

    scaler = StandardScaler()
    X_train_2d = X_train.reshape(-1, 6)
    X_test_2d = X_test.reshape(-1, 6)
    X_train_scaled_2d = scaler.fit_transform(X_train_2d)
    X_test_scaled_2d = scaler.transform(X_test_2d)
    X_train = X_train_scaled_2d.reshape(X_train.shape)
    X_test = X_test_scaled_2d.reshape(X_test.shape)

    print(f"[INFO] 训练集: {len(X_train)}, 测试集: {len(X_test)}")
    return X_train, X_test, y_train, y_test, scaler


def build_model(input_shape):
    model = keras.Sequential([
        keras.layers.Input(shape=input_shape),
        keras.layers.Conv1D(32, kernel_size=5, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.MaxPooling1D(pool_size=2),
        keras.layers.Conv1D(64, kernel_size=5, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.MaxPooling1D(pool_size=2),
        keras.layers.Conv1D(32, kernel_size=3, activation='relu', padding='same'),
        keras.layers.BatchNormalization(),
        keras.layers.GlobalAveragePooling1D(),
        keras.layers.Dense(16, activation='relu'),
        keras.layers.Dropout(0.3),
        keras.layers.Dense(1, activation='sigmoid')
    ])

    model.compile(
        optimizer=keras.optimizers.Adam(learning_rate=0.001),
        loss='binary_crossentropy',
        metrics=['accuracy']
    )
    model.summary()
    return model


def train_model(model, X_train, y_train, X_test, y_test, epochs=100, batch_size=32):
    print("[INFO] 开始训练...")
    print("[INFO] 使用 TensorBoard 查看训练过程: tensorboard --logdir logs")
    
    # TensorBoard callback
    tensorboard_cb = keras.callbacks.TensorBoard(
        log_dir=LOG_DIR,
        histogram_freq=1,      # 每 epoch 记录权重直方图
        write_graph=True,      # 记录计算图
        write_images=True,     # 记录模型图像
        update_freq='epoch',   # 每 epoch 记录一次指标
        profile_batch=0        # 禁用 profiling，避免性能问题
    )
    
    callbacks = [
        tensorboard_cb,
        keras.callbacks.EarlyStopping(monitor='val_loss', patience=3, restore_best_weights=True),
        keras.callbacks.ReduceLROnPlateau(monitor='val_loss', factor=0.5, patience=7, min_lr=1e-6)
    ]

    history = model.fit(
        X_train, y_train, epochs=epochs, batch_size=batch_size,
        validation_split=0.15, callbacks=callbacks, verbose=1
    )

    print("\n[INFO] 模型评估:")
    test_loss, test_acc = model.evaluate(X_test, y_test, verbose=0)
    print(f"    测试集损失: {test_loss:.4f}")
    print(f"    测试集准确率: {test_acc:.4f}")

    y_pred = (model.predict(X_test, verbose=0) > 0.5).astype(int)
    cm = confusion_matrix(y_test, y_pred)
    print("\n混淆矩阵:")
    print(f"           预测ADL  预测Fall")
    print(f"实际ADL      {cm[0,0]:5d}     {cm[0,1]:5d}")
    print(f"实际Fall     {cm[1,0]:5d}     {cm[1,1]:5d}")
    print("\n分类报告:")
    print(classification_report(y_test, y_pred, target_names=['ADL', 'Fall']))

    return history, y_pred, y_test, cm


def plot_results(history, y_test, y_pred, cm, save_path):
    """绘制训练结果图表"""
    fig, axes = plt.subplots(2, 2, figsize=(14, 10))
    fig.suptitle('Fall Detection Model - Training Results', fontsize=16, fontweight='bold')

    # 1. 准确率曲线
    ax1 = axes[0, 0]
    ax1.plot(history.history['accuracy'], label='Training Accuracy', linewidth=2, color='#2E86AB')
    ax1.plot(history.history['val_accuracy'], label='Validation Accuracy', linewidth=2, color='#E94F37')
    ax1.set_xlabel('Epoch', fontsize=11)
    ax1.set_ylabel('Accuracy', fontsize=11)
    ax1.set_title('Accuracy Over Epochs', fontsize=12, fontweight='bold')
    ax1.legend(loc='lower right')
    ax1.grid(True, alpha=0.3)
    ax1.set_ylim([0, 1.05])

    # 2. 损失曲线
    ax2 = axes[0, 1]
    ax2.plot(history.history['loss'], label='Training Loss', linewidth=2, color='#2E86AB')
    ax2.plot(history.history['val_loss'], label='Validation Loss', linewidth=2, color='#E94F37')
    ax2.set_xlabel('Epoch', fontsize=11)
    ax2.set_ylabel('Loss', fontsize=11)
    ax2.set_title('Loss Over Epochs', fontsize=12, fontweight='bold')
    ax2.legend(loc='upper right')
    ax2.grid(True, alpha=0.3)

    # 3. 混淆矩阵
    ax3 = axes[1, 0]
    im = ax3.imshow(cm, cmap='Blues', aspect='auto')
    ax3.set_xticks([0, 1])
    ax3.set_yticks([0, 1])
    ax3.set_xticklabels(['ADL', 'Fall'])
    ax3.set_yticklabels(['ADL', 'Fall'])
    ax3.set_xlabel('Predicted Label', fontsize=11)
    ax3.set_ylabel('True Label', fontsize=11)
    ax3.set_title('Confusion Matrix', fontsize=12, fontweight='bold')

    for i in range(2):
        for j in range(2):
            text_color = 'white' if cm[i, j] > cm.max() / 2 else 'black'
            ax3.text(j, i, f'{cm[i, j]}', ha='center', va='center',
                    fontsize=16, fontweight='bold', color=text_color)

    plt.colorbar(im, ax=ax3)

    # 4. 分类性能条形图
    ax4 = axes[1, 1]
    report = classification_report(y_test, y_pred, target_names=['ADL', 'Fall'], output_dict=True)
    metrics = ['precision', 'recall', 'f1-score']
    adl_metrics = [report['ADL'][m] for m in metrics]
    fall_metrics = [report['Fall'][m] for m in metrics]

    x = np.arange(len(metrics))
    width = 0.35

    bars1 = ax4.bar(x - width/2, adl_metrics, width, label='ADL', color='#2E86AB')
    bars2 = ax4.bar(x + width/2, fall_metrics, width, label='Fall', color='#E94F37')

    ax4.set_ylabel('Score', fontsize=11)
    ax4.set_title('Classification Metrics', fontsize=12, fontweight='bold')
    ax4.set_xticks(x)
    ax4.set_xticklabels(['Precision', 'Recall', 'F1-Score'])
    ax4.legend()
    ax4.set_ylim([0, 1.15])
    ax4.grid(True, alpha=0.3, axis='y')

    for bar in bars1 + bars2:
        height = bar.get_height()
        ax4.annotate(f'{height:.2f}',
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3), textcoords="offset points",
                    ha='center', va='bottom', fontsize=9)

    plt.tight_layout(rect=[0, 0.03, 1, 0.95])

    # 保存图片
    os.makedirs(os.path.dirname(save_path), exist_ok=True)
    plt.savefig(save_path, dpi=150, bbox_inches='tight', facecolor='white')
    print(f"\n[INFO] 图表已保存: {save_path}")

    # 显示图片
    plt.show()


def convert_to_tflite(model, X_sample):
    print("[INFO] 转换为 TFLite 模型...")
    converter = tf.lite.TFLiteConverter.from_keras_model(model)
    converter.optimizations = [tf.lite.Optimize.DEFAULT]
    tflite_model = converter.convert()

    os.makedirs(MODEL_OUTPUT_DIR, exist_ok=True)
    with open(TFLITE_MODEL_PATH, 'wb') as f:
        f.write(tflite_model)
    print(f"[INFO] TFLite 模型已保存: {TFLITE_MODEL_PATH}")
    print(f"       模型大小: {len(tflite_model) / 1024:.2f} KB")
    return tflite_model


def generate_header_file(tflite_model, model_name="fall_model"):
    print("[INFO] 生成 C 头文件...")
    model_bytes = list(tflite_model)
    lines = []
    for i in range(0, len(model_bytes), 16):
        chunk = model_bytes[i:i+16]
        hex_str = ', '.join([f'0x{b:02X}' for b in chunk])
        lines.append(f'    {hex_str}')

    header_content = f'''/*************************************************************************************************************
 * @file    fall_model_data.h
 * @brief   跌倒检测 TFLite 模型数据
 * @author  Auto-generated
 * @date    {pd.Timestamp.now().strftime('%Y-%m-%d')}
 * @version V1.0
 *
 * 模型说明:
 *   - 架构: 1D CNN
 *   - 输入: float [{WINDOW_SIZE}, 6] - 6轴IMU数据
 *   - 输出: float [1] - 跌倒概率 (0.0-0.5=正常, 0.5-1.0=跌倒)
 *
 ************************************************************************************************************/

#ifndef FALL_MODEL_DATA_H
#define FALL_MODEL_DATA_H

#include <stdint.h>

#define FALL_MODEL_WINDOW_SIZE    ({WINDOW_SIZE})
#define FALL_MODEL_INPUT_FEATURES (6)
#define FALL_MODEL_DATA_SIZE      ({len(model_bytes)})
#define FALL_DETECT_THRESHOLD     (0.6f)

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
    print("跌倒检测模型训练 (带可视化)")
    print("=" * 60)

    # 1. 加载数据
    X, y = load_dataset()

    # 2. 预处理
    X_train, X_test, y_train, y_test, scaler = preprocess_data(X, y)

    # 3. 构建模型
    model = build_model(input_shape=(WINDOW_SIZE, 6))

    # 4. 训练
    history, y_pred, y_test, cm = train_model(model, X_train, y_train, X_test, y_test)

    # 5. 绘制结果图表
    print("\n[INFO] 生成训练结果图表...")
    plot_results(history, y_test, y_pred, cm, PLOT_PATH)

    # 6. 转换为 TFLite
    tflite_model = convert_to_tflite(model, X_train)

    # 7. 生成头文件
    generate_header_file(tflite_model)

    print("\n" + "=" * 60)
    print("训练完成!")
    print("=" * 60)
    print(f"\n输出文件:")
    print(f"  - TFLite 模型: {TFLITE_MODEL_PATH}")
    print(f"  - C 头文件:    {HEADER_FILE_PATH}")
    print(f"  - 训练图表:    {PLOT_PATH}")
    print(f"  - TensorBoard: tensorboard --logdir {LOG_DIR}")


if __name__ == "__main__":
    main()
