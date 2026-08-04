# -*- coding: utf-8 -*-
from pathlib import Path

src = Path(r"C:\Users\crh\Desktop\tflite-micro-src\tensorflow\lite\micro\examples\hello_world\models\hello_world_int8.tflite")
dst_dir = Path(r"C:\Users\crh\Desktop\HT67595固件方案\Prj1V0\sources\components\ht32f675x5_r2\tflm_app")
data = src.read_bytes()
print("model bytes", len(data))

(dst_dir / "hello_world_model_data.h").write_text(
    "#ifndef HELLO_WORLD_MODEL_DATA_H\n"
    "#define HELLO_WORLD_MODEL_DATA_H\n\n"
    "#include <cstdint>\n\n"
    "extern const unsigned char g_hello_world_int8_model_data[];\n"
    "extern const unsigned int g_hello_world_int8_model_data_len;\n\n"
    "#endif\n",
    encoding="utf-8",
)

lines = [f"0x{b:02x}" for b in data]
chunks = []
for i in range(0, len(lines), 12):
    chunks.append("  " + ", ".join(lines[i : i + 12]) + ",")
body = "\n".join(chunks)

(dst_dir / "hello_world_model_data.cc").write_text(
    '#include "hello_world_model_data.h"\n\n'
    "alignas(16) const unsigned char g_hello_world_int8_model_data[] = {\n"
    f"{body}\n"
    "};\n\n"
    f"const unsigned int g_hello_world_int8_model_data_len = {len(data)};\n",
    encoding="utf-8",
)
print("done")
