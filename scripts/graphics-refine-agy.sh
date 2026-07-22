#!/usr/bin/env bash
# Phase B2 — refine an existing free vision with book visual standards + surgical notes.
# Still does NOT attach SVG structure templates by default.
#
# Usage:
#   ./scripts/graphics-refine-agy.sh \
#     --vision path/to/vision-free-01.png \
#     --brief path/to/slug.vision.md \
#     --notes "Loop must stay on 4a; use minimale Pausen" \
#     --out path/to/vision-refined-01.png
#
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

VISION=""
BRIEF=""
NOTES=""
OUT=""
MODEL="${GRAPHICS_AGY_MODEL:-Gemini 3.6 Flash (High)}"
TIMEOUT="${GRAPHICS_AGY_TIMEOUT:-8m0s}"
STANDARDS="domains/medical/skill/medical-graphics/references/book-visual-standards.md"

usage() {
  echo "Usage: $0 --vision <png> --brief <vision.md> --out <png> [--notes \"...\"]" >&2
  exit 2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --vision) VISION="$2"; shift 2 ;;
    --brief) BRIEF="$2"; shift 2 ;;
    --notes) NOTES="$2"; shift 2 ;;
    --out) OUT="$2"; shift 2 ;;
    --model) MODEL="$2"; shift 2 ;;
    -h|--help) usage ;;
    *) echo "Unknown: $1" >&2; usage ;;
  esac
done

[[ -n "$VISION" && -n "$BRIEF" && -n "$OUT" ]] || usage
[[ -f "$VISION" && -f "$BRIEF" && -f "$STANDARDS" ]] || { echo "Missing input file" >&2; exit 1; }
command -v agy >/dev/null || { echo "agy not on PATH" >&2; exit 1; }

mkdir -p "$(dirname "$OUT")"
VISION_ABS="$(cd "$(dirname "$VISION")" && pwd)/$(basename "$VISION")"
BRIEF_ABS="$(cd "$(dirname "$BRIEF")" && pwd)/$(basename "$BRIEF")"
STANDARDS_ABS="$(cd "$(dirname "$STANDARDS")" && pwd)/$(basename "$STANDARDS")"
OUT_ABS="$(cd "$(dirname "$OUT")" && pwd)/$(basename "$OUT")"

echo "graphics-refine-agy: REFINE mode (standards + notes; no structure SVG)"
echo "  vision: $VISION_ABS"
echo "  out:    $OUT_ABS"

agy --model "$MODEL" \
  --dangerously-skip-permissions \
  --print-timeout "$TIMEOUT" \
  -p "Refine a didactic medical graphic for book production.

Vision brief (content + didactic intent): @$BRIEF_ABS
Book visual standards (apply): @$STANDARDS_ABS
Starting image to improve (edit this; keep composition spirit unless notes require change): @$VISION_ABS

Surgical notes from review:
${NOTES:-none}

Rules:
- Fix flow/claim/language/palette issues from standards + notes.
- Do NOT open other repo flowchart SVG/PNG files as layout templates.
- Use Nano Banana image edit/generate as appropriate.
- Save result to: $OUT_ABS
- Report path, size, what changed." \
  2>&1

[[ -f "$OUT_ABS" ]] || { echo "WARN: missing $OUT_ABS" >&2; exit 1; }
echo "OK: $OUT_ABS"
