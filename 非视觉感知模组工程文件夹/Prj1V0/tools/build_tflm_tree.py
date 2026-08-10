# -*- coding: utf-8 -*-
"""Assemble a Keil-usable TFLM source tree without GNU make.

Usage:
  py -3 tools/build_tflm_tree.py
"""
from __future__ import annotations

import io
import os
import shutil
import sys
import urllib.request
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SRC = Path(r"C:\Users\crh\Desktop\tflite-micro-src")
OUT = ROOT / "third_party" / "tflm-tree"

# Third-party zips used by TFLM (from third_party_downloads.inc)
DEPS = {
    "flatbuffers": {
        "url": "https://github.com/google/flatbuffers/archive/refs/tags/v25.9.23.zip",
        "strip_prefix": "flatbuffers-25.9.23",
        "keep": ["include", "LICENSE"],
    },
    "gemmlowp": {
        "url": "https://github.com/google/gemmlowp/archive/719139ce755a0f31cbf1c37f7f98adcc7fc9f425.zip",
        "strip_prefix": "gemmlowp-719139ce755a0f31cbf1c37f7f98adcc7fc9f425",
        "keep": ["fixedpoint", "internal", "LICENSE"],
    },
    "ruy": {
        "url": "https://github.com/google/ruy/archive/d37128311b445e758136b8602d1bbd2a755e115d.zip",
        "strip_prefix": "ruy-d37128311b445e758136b8602d1bbd2a755e115d",
        "keep": ["ruy", "LICENSE"],
    },
    "kissfft": {
        "url": "https://github.com/mborgerding/kissfft/archive/refs/tags/v130.zip",
        "strip_prefix": "kissfft-130",
        "keep": None,  # copy all
    },
}


def download_zip(url: str) -> bytes:
    print(f"  downloading {url}")
    req = urllib.request.Request(url, headers={"User-Agent": "tflm-tree-builder"})
    with urllib.request.urlopen(req, timeout=120) as resp:
        return resp.read()


def extract_dep(name: str, meta: dict, dest_root: Path) -> None:
    data = download_zip(meta["url"])
    dest = dest_root / name
    if dest.exists():
        shutil.rmtree(dest)
    dest.mkdir(parents=True)

    with zipfile.ZipFile(io.BytesIO(data)) as zf:
        prefix = meta["strip_prefix"].rstrip("/") + "/"
        keep = meta["keep"]
        for info in zf.infolist():
            name_in = info.filename.replace("\\", "/")
            if not name_in.startswith(prefix) or name_in == prefix:
                continue
            rel = name_in[len(prefix) :]
            if not rel or rel.endswith("/"):
                continue
            if keep is not None:
                top = rel.split("/", 1)[0]
                if top not in keep:
                    continue
            out_path = dest / rel
            out_path.parent.mkdir(parents=True, exist_ok=True)
            with zf.open(info) as src, open(out_path, "wb") as dst:
                shutil.copyfileobj(src, dst)
    print(f"  extracted {name} -> {dest}")


def should_skip(path: Path) -> bool:
    parts = {p.lower() for p in path.parts}
    skip_dirs = {
        "examples",
        "tests",
        "test",
        "benchmarks",
        "tools",
        "python",
        "ci",
        ".github",
        "integration_tests",
        "testing",
    }
    if parts & skip_dirs:
        # keep micro/kernels (not tests)
        s = str(path).replace("\\", "/")
        if "/kernels/" in s and "test" not in path.name.lower():
            if "/kernels/testdata" in s or path.name.endswith("_test.cc"):
                return True
            if "examples" in parts or "benchmarks" in parts:
                return True
            # allow kernel sources
            if path.suffix in {".cc", ".c", ".h"} and "_test" not in path.name:
                return False
        return True
    name = path.name.lower()
    if name.endswith("_test.cc") or name.endswith("_test.c"):
        return True
    if name.endswith("_test.h"):
        return True
    return False


def copy_tree_filtered(src_dir: Path, dst_dir: Path, exts: set[str]) -> int:
    count = 0
    for src in src_dir.rglob("*"):
        if not src.is_file():
            continue
        if src.suffix.lower() not in exts and src.name not in {"LICENSE", "LICENSE.txt"}:
            continue
        rel = src.relative_to(SRC)
        if should_skip(rel):
            continue
        dst = dst_dir / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        count += 1
    return count


def main() -> int:
    if not SRC.exists():
        print(f"ERROR: source not found: {SRC}")
        print("Download tflite-micro first.")
        return 1

    print(f"SRC = {SRC}")
    print(f"OUT = {OUT}")
    if OUT.exists():
        print("Cleaning old tflm-tree...")
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)

    # Core tensorflow lite + micro (+ signal headers used by some kernels)
    print("Copying tensorflow sources...")
    n = 0
    for sub in [
        "tensorflow/lite",
        "tensorflow/compiler",  # tflite_types.h etc. required by c_api_types.h
        "signal",
        "LICENSE",
    ]:
        p = SRC / sub
        if p.is_file():
            dst = OUT / sub
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(p, dst)
            n += 1
        elif p.is_dir():
            n += copy_tree_filtered(p, OUT, {".cc", ".c", ".h", ".inc"})
        else:
            print(f"  warn: missing {p}")
    print(f"  copied {n} files")

    # Third party deps into OUT/third_party
    tp = OUT / "third_party"
    tp.mkdir(parents=True, exist_ok=True)
    print("Downloading third_party deps...")
    for name, meta in DEPS.items():
        try:
            extract_dep(name, meta, tp)
        except Exception as e:
            print(f"  ERROR {name}: {e}")
            return 1

    # Marker
    (OUT / "README_TFLM_TREE.txt").write_text(
        "Generated by tools/build_tflm_tree.py (no GNU make).\n"
        "Add this tree to Keil MP project IncludePath and compile needed .cc files.\n",
        encoding="utf-8",
    )
    print("DONE")
    print(f"Tree ready at: {OUT}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
