"""
专业模型分析工具 - 简化版
"""

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import numpy as np
import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, classification_report, roc_curve, auc, precision_recall_curve, average_precision_score
import warnings
warnings.filterwarnings('ignore')

plt.rcParams['font.sans-serif'] = ['Microsoft YaHei', 'SimHei', 'Arial Unicode MS']
plt.rcParams['axes.unicode_minus'] = False

# ============================================================================
# 配置
# ============================================================================
MODEL_PATH = r"C:\Users\BAI26\AppData\Local\Temp\temp_model.tflite"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
DATASET_DIR = os.path.join(SCRIPT_DIR, "fall-dataset", "fall-detection-dataset-IMU-main")
OUTPUT_DIR = os.path.join(SCRIPT_DIR, "output")
WINDOW_SIZE = 128
STRIDE = 32

print("=" * 60)
print("Professional Model Analysis Report")
print("=" * 60)

# ============================================================================
# 加载 TFLite 模型
# ============================================================================
print("\n[1] Loading TFLite model...")
if not os.path.exists(MODEL_PATH):
    print(f"ERROR: Model not found at {MODEL_PATH}")
    print("Please run train_with_visualization.py first to generate the model.")
    exit(1)

interpreter = tf.lite.Interpreter(model_path=MODEL_PATH)
interpreter.allocate_tensors()

input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()

print(f"    Input shape: {input_details[0]['shape']}")
print(f"    Output shape: {output_details[0]['shape']}")

# ============================================================================
# 加载测试数据
# ============================================================================
print("\n[2] Loading test data...")
FALL_DIR = os.path.join(DATASET_DIR, "Fall Events")
ADL_DIR = os.path.join(DATASET_DIR, "Daily Activities")

all_data, all_labels = [], []

for f in ["01.Forward Fall.xlsx", "02.Backward Fall.xlsx", "03.Right-side Fall.xlsx", 
          "04.Left-side Fall.xlsx", "05.Forward Fall onto the Knees.xlsx"]:
    path = os.path.join(FALL_DIR, f)
    if os.path.exists(path):
        df = pd.read_excel(path, header=None)
        all_data.append(df.iloc[:, 1:7].values.astype(np.float32))
        all_labels.extend([1] * len(df))

for f in ["01.Going Upstairs.xlsx", "02.Going Downstairs.xlsx", "03.Walking.xlsx",
          "04.Running.xlsx", "05.Stepping.xlsx", "06.Sitting Down.xlsx",
          "07.Quickly Sitting Down.xlsx", "08.Jumping.xlsx"]:
    path = os.path.join(ADL_DIR, f)
    if os.path.exists(path):
        df = pd.read_excel(path, header=None)
        all_data.append(df.iloc[:, 1:7].values.astype(np.float32))
        all_labels.extend([0] * len(df))

X = np.vstack(all_data)
y = np.array(all_labels)

# 创建滑动窗口
windows, labels = [], []
for i in range(0, len(X) - WINDOW_SIZE + 1, STRIDE):
    window = X[i:i + WINDOW_SIZE]
    window_labels = y[i:i + WINDOW_SIZE]
    label = 1 if np.sum(window_labels) > (WINDOW_SIZE / 2) else 0
    windows.append(window)
    labels.append(label)

X_windows = np.array(windows)
y_windows = np.array(labels)

X_train, X_test, y_train, y_test = train_test_split(
    X_windows, y_windows, test_size=0.2, random_state=42, stratify=y_windows
)

scaler = StandardScaler()
X_train_2d = X_train.reshape(-1, 6)
X_test_2d = X_test.reshape(-1, 6)
scaler.fit(X_train_2d)
X_test_scaled = scaler.transform(X_test_2d).reshape(X_test.shape).astype(np.float32)

print(f"    Test samples: {len(X_test)} (Fall: {np.sum(y_test)}, ADL: {len(y_test)-np.sum(y_test)})")

# ============================================================================
# TFLite 模型推理
# ============================================================================
print("\n[3] Running inference...")
y_pred_prob = []
for i in range(len(X_test_scaled)):
    interpreter.set_tensor(input_details[0]['index'], X_test_scaled[i:i+1])
    interpreter.invoke()
    output = interpreter.get_tensor(output_details[0]['index'])[0][0]
    y_pred_prob.append(output)

y_pred_prob = np.array(y_pred_prob)
y_pred = (y_pred_prob > 0.5).astype(int)

# ============================================================================
# 计算指标
# ============================================================================
cm = confusion_matrix(y_test, y_pred)
report = classification_report(y_test, y_pred, target_names=['ADL', 'Fall'], output_dict=True)
fpr, tpr, _ = roc_curve(y_test, y_pred_prob)
roc_auc = auc(fpr, tpr)
precision_curve, recall_curve, _ = precision_recall_curve(y_test, y_pred_prob)
ap = average_precision_score(y_test, y_pred_prob)

accuracy = (cm[0,0] + cm[1,1]) / cm.sum()
sensitivity = cm[1,1] / (cm[1,0] + cm[1,1]) if (cm[1,0] + cm[1,1]) > 0 else 0
specificity = cm[0,0] / (cm[0,0] + cm[0,1]) if (cm[0,0] + cm[0,1]) > 0 else 0

# ============================================================================
# 生成专业分析图表
# ============================================================================
print("\n[4] Generating professional analysis charts...")

fig = plt.figure(figsize=(16, 10))
fig.suptitle('Fall Detection Model - Professional Analysis', fontsize=18, fontweight='bold', y=0.98)

# 1. Confusion Matrix
ax1 = fig.add_subplot(2, 3, 1)
im = ax1.imshow(cm, cmap='RdYlGn_r', aspect='auto')
ax1.set_xticks([0, 1])
ax1.set_yticks([0, 1])
ax1.set_xticklabels(['ADL', 'Fall'], fontsize=11)
ax1.set_yticklabels(['ADL', 'Fall'], fontsize=11)
ax1.set_xlabel('Predicted Label', fontsize=11)
ax1.set_ylabel('Actual Label', fontsize=11)
ax1.set_title('Confusion Matrix', fontsize=13, fontweight='bold', pad=10)
thresh = cm.max() / 2
for i in range(2):
    for j in range(2):
        ax1.text(j, i, f'{cm[i, j]}', ha='center', va='center', fontsize=20, fontweight='bold',
                color='white' if cm[i, j] > thresh else 'black')
plt.colorbar(im, ax=ax1)

# 2. ROC Curve
ax2 = fig.add_subplot(2, 3, 2)
ax2.plot(fpr, tpr, color='#E63946', lw=2.5, label=f'ROC (AUC = {roc_auc:.3f})')
ax2.plot([0, 1], [0, 1], color='gray', lw=1.5, linestyle='--', label='Random')
ax2.fill_between(fpr, tpr, alpha=0.2, color='#E63946')
ax2.set_xlim([0.0, 1.0])
ax2.set_ylim([0.0, 1.05])
ax2.set_xlabel('False Positive Rate', fontsize=11)
ax2.set_ylabel('True Positive Rate', fontsize=11)
ax2.set_title('ROC Curve', fontsize=13, fontweight='bold', pad=10)
ax2.legend(loc='lower right', fontsize=10)
ax2.grid(True, alpha=0.3)

# 3. Precision-Recall Curve
ax3 = fig.add_subplot(2, 3, 3)
ax3.plot(recall_curve, precision_curve, color='#457B9D', lw=2.5, label=f'PR (AP = {ap:.3f})')
ax3.fill_between(recall_curve, precision_curve, alpha=0.2, color='#457B9D')
ax3.set_xlabel('Recall', fontsize=11)
ax3.set_ylabel('Precision', fontsize=11)
ax3.set_title('Precision-Recall Curve', fontsize=13, fontweight='bold', pad=10)
ax3.legend(loc='lower left', fontsize=10)
ax3.grid(True, alpha=0.3)
ax3.set_xlim([0, 1])
ax3.set_ylim([0, 1.05])

# 4. Probability Distribution
ax4 = fig.add_subplot(2, 3, 4)
bins = np.linspace(0, 1, 31)
ax4.hist(y_pred_prob[y_test == 0], bins=bins, alpha=0.7, color='#2A9D8F', label='ADL (Normal)', edgecolor='white')
ax4.hist(y_pred_prob[y_test == 1], bins=bins, alpha=0.7, color='#E63946', label='Fall', edgecolor='white')
ax4.axvline(x=0.5, color='black', linestyle='--', lw=2, label='Threshold (0.5)')
ax4.set_xlabel('Predicted Probability', fontsize=11)
ax4.set_ylabel('Count', fontsize=11)
ax4.set_title('Prediction Distribution', fontsize=13, fontweight='bold', pad=10)
ax4.legend(fontsize=9)
ax4.grid(True, alpha=0.3)

# 5. Metrics Bar Chart
ax5 = fig.add_subplot(2, 3, 5)
metrics_names = ['Precision', 'Recall', 'F1-Score']
adl_vals = [report['ADL']['precision'], report['ADL']['recall'], report['ADL']['f1-score']]
fall_vals = [report['Fall']['precision'], report['Fall']['recall'], report['Fall']['f1-score']]
x = np.arange(len(metrics_names))
width = 0.35
bars1 = ax5.bar(x - width/2, adl_vals, width, label='ADL', color='#2A9D8F')
bars2 = ax5.bar(x + width/2, fall_vals, width, label='Fall', color='#E63946')
ax5.set_ylabel('Score', fontsize=11)
ax5.set_title('Classification Metrics', fontsize=13, fontweight='bold', pad=10)
ax5.set_xticks(x)
ax5.set_xticklabels(metrics_names, fontsize=10)
ax5.legend(fontsize=10)
ax5.set_ylim([0, 1.15])
ax5.grid(True, alpha=0.3, axis='y')
for bar in bars1 + bars2:
    h = bar.get_height()
    ax5.annotate(f'{h:.2f}', xy=(bar.get_x() + bar.get_width()/2, h),
                 xytext=(0, 3), textcoords="offset points", ha='center', fontsize=9)

# 6. Key Metrics Summary
ax6 = fig.add_subplot(2, 3, 6)
ax6.axis('off')
metrics_text = f"""
╔═══════════════════════════════════════════╗
║         MODEL PERFORMANCE SUMMARY         ║
╠═══════════════════════════════════════════╣
║                                           ║
║  Accuracy        {accuracy:.1%}                  ║
║                                           ║
║  Sensitivity     {sensitivity:.1%}  (Fall Recall)     ║
║                                           ║
║  Specificity     {specificity:.1%}  (ADL Recall)      ║
║                                           ║
║  AUC-ROC         {roc_auc:.3f}                   ║
║                                           ║
║  Avg Precision   {ap:.3f}                   ║
║                                           ║
╠═══════════════════════════════════════════╣
║  Confusion Matrix:                      ║
║    TN={cm[0,0]:3d}  FP={cm[0,1]:3d}                       ║
║    FN={cm[1,0]:3d}  TP={cm[1,1]:3d}                       ║
╚═══════════════════════════════════════════╝
"""
ax6.text(0.5, 0.5, metrics_text, transform=ax6.transAxes, fontsize=11,
         verticalalignment='center', horizontalalignment='center',
         fontfamily='monospace',
         bbox=dict(boxstyle='round', facecolor='#F8F9FA', edgecolor='#DEE2E6', lw=2))

plt.tight_layout(rect=[0, 0.02, 1, 0.95])

# 保存图表
report_path = os.path.join(OUTPUT_DIR, "model_analysis_report.png")
plt.savefig(report_path, dpi=150, bbox_inches='tight', facecolor='white')
print(f"    Chart saved: {report_path}")

# ============================================================================
# 生成文本报告
# ============================================================================
report_text = f"""
================================================================================
                    FALL DETECTION MODEL ANALYSIS REPORT
================================================================================

Generated: {pd.Timestamp.now().strftime('%Y-%m-%d %H:%M:%S')}

--------------------------------------------------------------------------------
1. MODEL INFORMATION
--------------------------------------------------------------------------------
Model: {MODEL_PATH}
Input Shape: {input_details[0]['shape']}
Output Shape: {output_details[0]['shape']}

--------------------------------------------------------------------------------
2. TEST DATASET
--------------------------------------------------------------------------------
Total Samples: {len(X_test)}
Fall Samples: {np.sum(y_test)} ({np.sum(y_test)/len(y_test)*100:.1f}%)
ADL Samples: {len(y_test)-np.sum(y_test)} ({(len(y_test)-np.sum(y_test))/len(y_test)*100:.1f}%)

--------------------------------------------------------------------------------
3. CONFUSION MATRIX
--------------------------------------------------------------------------------
                    Predicted
                    ADL     Fall
Actual ADL         {cm[0,0]:5d}    {cm[0,1]:5d}
Actual Fall        {cm[1,0]:5d}    {cm[1,1]:5d}

TN (True Negative): {cm[0,0]}  - Correctly identified as normal
FP (False Positive): {cm[0,1]}  - Normal activity misclassified as fall
FN (False Negative): {cm[1,0]}  - Fall missed
TP (True Positive): {cm[1,1]}  - Correctly identified fall

--------------------------------------------------------------------------------
4. CLASSIFICATION METRICS
--------------------------------------------------------------------------------
                         ADL          Fall
Precision              {report['ADL']['precision']:.4f}       {report['Fall']['precision']:.4f}
Recall                 {report['ADL']['recall']:.4f}       {report['Fall']['recall']:.4f}
F1-Score               {report['ADL']['f1-score']:.4f}       {report['Fall']['f1-score']:.4f}

Overall Accuracy: {accuracy:.4f} ({int(cm[0,0]+cm[1,1])}/{len(y_test)})

--------------------------------------------------------------------------------
5. ADVANCED METRICS
--------------------------------------------------------------------------------
AUC-ROC (Area Under Curve): {roc_auc:.4f}
  - Measures the model's ability to distinguish between classes
  - 1.0 = perfect, 0.5 = random guessing

Average Precision (AP): {ap:.4f}
  -综合考虑精确率和召回率
  - Higher is better

Sensitivity (Recall for Fall): {sensitivity:.4f}
  - Percentage of actual falls correctly detected
  - Critical for safety applications

Specificity (Recall for ADL): {specificity:.4f}
  - Percentage of normal activities correctly identified
  - High specificity means fewer false alarms

--------------------------------------------------------------------------------
6. DETAILED CLASSIFICATION REPORT
--------------------------------------------------------------------------------
{classification_report(y_test, y_pred, target_names=['ADL (Normal)', 'Fall'])}

--------------------------------------------------------------------------------
7. INTERPRETATION & RECOMMENDATIONS
--------------------------------------------------------------------------------
1. Model accuracy: {accuracy:.1%} - {'Good' if accuracy > 0.85 else 'Needs improvement'}

2. Fall detection sensitivity: {sensitivity:.1%}
   - Approximately {(1-sensitivity)*100:.0f}% of falls may be missed
   - {'Consider improving recall for safety applications' if sensitivity < 0.9 else 'Acceptable for most applications'}

3. False alarm rate (ADL misclassified as Fall): {(cm[0,1]/(cm[0,0]+cm[0,1])*100):.1f}%
   - {'Low - good user experience' if cm[0,1]/(cm[0,0]+cm[0,1]) < 0.1 else 'May cause user fatigue'}

4. AUC-ROC: {roc_auc:.3f} - {'Excellent' if roc_auc > 0.95 else 'Good' if roc_auc > 0.85 else 'Moderate'}

================================================================================
                              END OF REPORT
================================================================================
"""

report_file = os.path.join(OUTPUT_DIR, "model_analysis_report.txt")
with open(report_file, 'w', encoding='utf-8') as f:
    f.write(report_text)

print(f"    Report saved: {report_file}")

print("\n" + "=" * 60)
print("Analysis Complete!")
print("=" * 60)
print(f"\nGenerated files:")
print(f"  - Chart: {report_path}")
print(f"  - Report: {report_file}")

plt.show()
