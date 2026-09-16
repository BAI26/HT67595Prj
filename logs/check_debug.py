import os

# 1. Check the actual source file that the Keil project uses
base = r'D:\2026-07'
correct_path = None
for item in os.listdir(base):
    full = os.path.join(base, item)
    if os.path.isdir(full):
        prj1v0 = os.path.join(full, 'Prj1V0')
        if os.path.isdir(prj1v0):
            p = os.path.join(prj1v0, 'sources', 'projects_source', 'ble_examples', 'ble_peripheral', 'ht32f675x5_r2', 'main', 'mp', 'main.c')
            if os.path.isfile(p):
                correct_path = p
                break

with open(correct_path, 'rb') as f:
    raw = f.read()
text = raw.decode('latin-1')

# Find main() and show the first ~40 lines
main_idx = text.find('int main(void)')
if main_idx >= 0:
    print("=== main() function ===")
    print(text[main_idx:main_idx+1500])
else:
    print("main() not found!")

# Also check the rom_hw_wdt_disable implementation
print("\n=== Searching for rom_hw_wdt_disable definition ===")
# Search in hal files
for root, dirs, files in os.walk(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(correct_path))))):
    for fname in files:
        if fname.endswith('.c') or fname.endswith('.h'):
            fpath = os.path.join(root, fname)
            try:
                with open(fpath, 'rb') as f:
                    content = f.read().decode('latin-1', errors='ignore')
                if 'rom_hw_wdt_disable' in content or 'rom_wdt' in content:
                    # Find the function definition
                    idx = content.find('rom_hw_wdt_disable')
                    if idx >= 0:
                        print(f"\nFound in: {fpath}")
                        print(content[max(0,idx-50):idx+300])
            except:
                pass
