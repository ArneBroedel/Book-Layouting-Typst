#!/usr/bin/env bash
# Free vision graphic generation via Antigravity Nano Banana.
# Does NOT attach structure SVG/PNG templates — content + didactic brief only.
#
# Usage:
#   ./scripts/graphics-vision-agy.sh --brief path/to/slug.vision.md --out path/to/out.png
#   ./scripts/graphics-vision-agy.sh --brief ... --out ... --preview dist/spikes/graphics/slug/vision-free-01.png
#
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

BRIEF=""
OUT=""
PREVIEW=""
MODEL="${GRAPHICS_AGY_MODEL:-Gemini 3.6 Flash (High)}"
TIMEOUT="${GRAPHICS_AGY_TIMEOUT:-8m0s}"

usage() {
  echo "Usage: $0 --brief <vision.md> --out <asset.png> [--preview <png>] [--model <agy model>]" >&2
  exit 2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --brief) BRIEF="$2"; shift 2 ;;
    --out) OUT="$2"; shift 2 ;;
    --preview) PREVIEW="$2"; shift 2 ;;
    --model) MODEL="$2"; shift 2 ;;
    -h|--help) usage ;;
    *) echo "Unknown arg: $1" >&2; usage ;;
  esac
done

[[ -n "$BRIEF" && -n "$OUT" ]] || usage
[[ -f "$BRIEF" ]] || { echo "Brief not found: $BRIEF" >&2; exit 1; }

if ! command -v agy >/dev/null 2>&1; then
  echo "agy (Antigravity CLI) not on PATH" >&2
  exit 1
fi

mkdir -p "$(dirname "$OUT")"
if [[ -n "$PREVIEW" ]]; then
  mkdir -p "$(dirname "$PREVIEW")"
fi

# Absolute paths for the agent
BRIEF_ABS="$(cd "$(dirname "$BRIEF")" && pwd)/$(basename "$BRIEF")"
OUT_ABS="$(mkdir -p "$(dirname "$OUT")" && cd "$(dirname "$OUT")" && pwd)/$(basename "$OUT")"
PREVIEW_LINE=""
if [[ -n "$PREVIEW" ]]; then
  PREVIEW_ABS="$(mkdir -p "$(dirname "$PREVIEW")" && cd "$(dirname "$PREVIEW")" && pwd)/$(basename "$PREVIEW")"
  PREVIEW_LINE="Also copy/save the same image to: $PREVIEW_ABS"
fi

echo "graphics-vision-agy: FREE mode (no structure template attach)"
echo "  brief: $BRIEF_ABS"
echo "  out:   $OUT_ABS"
echo "  model: $MODEL"

agy --model "$MODEL" \
  --dangerously-skip-permissions \
  --print-timeout "$TIMEOUT" \
  -p "You are generating a FREE didactic graphic for a medical textbook/emergency card pipeline (bookkit).

Read ONLY this vision brief (do NOT open other flowchart SVG/PNG files under domains/medical/assets/ as layout templates; do NOT use structure-transfer):
@$BRIEF_ABS

Rules:
- Invent composition freely from content + didactic intent in the brief.
- German labels only as allowed in the brief; no clinical invention.
- Use Nano Banana (generate_image) or best available Antigravity image tool for diagrams.
- Save PNG to: $OUT_ABS
$PREVIEW_LINE
- Report: path, pixel size, tool name, structure_reference=none, short flow self-check.

If first image breaks didactic invariants in the brief, regenerate once with surgical fixes — still without attaching repo layout files." \
  2>&1

if [[ -f "$OUT_ABS" ]]; then
  echo "OK: wrote $OUT_ABS"
  if [[ -n "${PREVIEW_ABS:-}" && -f "$OUT_ABS" ]]; then
    cp -f "$OUT_ABS" "$PREVIEW_ABS"
    echo "OK: preview $PREVIEW_ABS"
  fi
  if command -v python3 >/dev/null 2>&1; then
    python3 - "$OUT_ABS" <<'PY'
import sys
from pathlib import Path
p = Path(sys.argv[1])
try:
    from PIL import Image
    im = Image.open(p)
    print(f"size: {im.size[0]}×{im.size[1]} {im.mode}")
except Exception as e:
    print(f"(could not read size: {e})")
PY
  fi
else
  echo "WARN: expected output missing: $OUT_ABS — check agy log above" >&2
  exit 1
fi
