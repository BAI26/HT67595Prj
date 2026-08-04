# -*- coding: utf-8 -*-
from pathlib import Path
import re

proj = Path(r"C:\Users\crh\Desktop\HT67595固件方案\Prj1V0\projects\ble_examples\ble_peripheral\ht32f675x5_r2\project\mp\ble_peripheral_mp.uvprojx")
tree = Path(r"C:\Users\crh\Desktop\HT67595固件方案\Prj1V0\third_party\tflm-tree")
rel_prefix = r"..\..\..\..\..\..\third_party\tflm-tree\\"

text = proj.read_text(encoding="utf-8")
existing = set(re.findall(r"<FileName>([^<]+)</FileName>", text))

add_rel = [
    r"tensorflow\lite\micro\tflite_bridge\flatbuffer_conversions_bridge.cc",
    r"tensorflow\lite\micro\tflite_bridge\micro_error_reporter.cc",
    r"tensorflow\lite\core\api\flatbuffer_conversions.cc",
    r"tensorflow\lite\core\api\error_reporter.cc",
    r"tensorflow\lite\core\c\common.cc",
    r"tensorflow\lite\kernels\internal\tensor_ctypes.cc",
    r"tensorflow\lite\kernels\internal\quantization_util.cc",
    r"tensorflow\lite\kernels\kernel_util.cc",
    r"tensorflow\lite\micro\arena_allocator\single_arena_buffer_allocator.cc",
    r"tensorflow\lite\micro\arena_allocator\persistent_arena_buffer_allocator.cc",
    r"tensorflow\lite\micro\arena_allocator\non_persistent_arena_buffer_allocator.cc",
    r"tensorflow\lite\micro\memory_planner\linear_memory_planner.cc",
    r"tensorflow\lite\micro\memory_planner\greedy_memory_planner.cc",
    r"tensorflow\compiler\mlir\lite\schema\schema_utils.cc",
]

to_add = []
for rel in add_rel:
    p = tree / rel.replace("\\", "/")
    if not p.exists():
        print("MISSING", rel)
        continue
    name = p.name
    if name in existing:
        print("already", name)
        continue
    to_add.append((name, rel_prefix + rel))

print("will add", len(to_add))
entries = []
for name, path in to_add:
    entries.append(
        "            <File>\n"
        f"              <FileName>{name}</FileName>\n"
        "              <FileType>8</FileType>\n"
        f"              <FilePath>{path}</FilePath>\n"
        "            </File>"
    )
block = "\n".join(entries)

m = re.search(
    r"(<GroupName>tflite_micro</GroupName>\s*<Files>)(.*?)(\s*</Files>\s*</Group>)",
    text,
    re.S,
)
if not m:
    raise SystemExit("tflite_micro group not found")

new_text = (
    text[: m.start()]
    + m.group(1)
    + m.group(2).rstrip()
    + "\n"
    + block
    + m.group(3)
    + text[m.end() :]
)

if "<MiscControls>-fno-rtti -fno-exceptions</MiscControls>" in new_text:
    new_text = new_text.replace(
        "<MiscControls>-fno-rtti -fno-exceptions</MiscControls>",
        "<MiscControls>-fno-rtti -fno-exceptions -std=c++17</MiscControls>",
        1,
    )

proj.write_text(new_text, encoding="utf-8")
print("DONE")
for n, _ in to_add:
    print(" +", n)
