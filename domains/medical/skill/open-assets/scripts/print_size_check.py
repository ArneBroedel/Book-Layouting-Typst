#!/usr/bin/env python3
"""Report max print width (mm) at 300 dpi for image files."""
from __future__ import annotations

import argparse
import struct
import sys
from pathlib import Path


def png_size(path: Path) -> tuple[int, int]:
    data = path.read_bytes()
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError("not png")
    # IHDR
    w, h = struct.unpack(">II", data[16:24])
    return w, h


def jpeg_size(path: Path) -> tuple[int, int]:
    data = path.read_bytes()
    if data[:2] != b"\xff\xd8":
        raise ValueError("not jpeg")
    i = 2
    while i < len(data) - 8:
        if data[i] != 0xFF:
            i += 1
            continue
        marker = data[i + 1]
        if marker in (0xC0, 0xC1, 0xC2):
            h, w = struct.unpack(">HH", data[i + 5 : i + 9])
            return w, h
        if marker == 0xD9:
            break
        if marker == 0x01 or (0xD0 <= marker <= 0xD9):
            i += 2
            continue
        seg_len = struct.unpack(">H", data[i + 2 : i + 4])[0]
        i += 2 + seg_len
    raise ValueError("jpeg size not found")


def image_size(path: Path) -> tuple[int, int]:
    suf = path.suffix.lower()
    if suf == ".png":
        return png_size(path)
    if suf in (".jpg", ".jpeg"):
        return jpeg_size(path)
    # fallback: try png then jpeg
    try:
        return png_size(path)
    except Exception:
        return jpeg_size(path)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("paths", nargs="+", type=Path)
    ap.add_argument("--dpi", type=float, default=300.0)
    ap.add_argument("--planned-mm", type=float, default=None, help="fail if planned > max")
    args = ap.parse_args()
    exit_code = 0
    for path in args.paths:
        try:
            w, h = image_size(path)
            max_mm = (w / args.dpi) * 25.4
            line = f"{path}: {w}x{h}px → max {max_mm:.1f} mm @ {args.dpi:.0f} dpi"
            if args.planned_mm is not None:
                ok = args.planned_mm <= max_mm + 0.05
                line += f" | planned {args.planned_mm:.1f} mm → {'OK' if ok else 'TOO_LARGE'}"
                if not ok:
                    exit_code = 1
            print(line)
        except Exception as e:
            print(f"{path}: ERROR {e}", file=sys.stderr)
            exit_code = 2
    return exit_code


if __name__ == "__main__":
    sys.exit(main())
