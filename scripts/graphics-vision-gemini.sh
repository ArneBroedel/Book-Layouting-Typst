#!/usr/bin/env bash
# Free vision via Gemini web UI (Nano Banana / "Bild erstellen") — bypasses agy image quota.
# Requires: logged-in gemini-chat session (`python3 …/cli.py doctor` / `login`).
#
# Usage:
#   ./scripts/graphics-vision-gemini.sh --brief path/to/slug.vision.md --out path/to/out.png
#   ./scripts/graphics-vision-gemini.sh --prompt "…" --out path/to/out.png
#
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

BRIEF=""
PROMPT=""
OUT=""
MODEL=""
MAX_POLLS="${GRAPHICS_GEMINI_MAX_POLLS:-90}"
GEMINI_CLI="${GEMINI_CHAT_CLI:-}"

# Default: shared-agent-config skill path (override with GEMINI_CHAT_CLI)
if [[ -z "$GEMINI_CLI" ]]; then
  for cand in \
    "$HOME/repos/private/shared-agent-config/.agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py" \
    "$HOME/repos/company/shared-agent-config/.agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py" \
    "/home/arneb/repos/private/shared-agent-config/.agents/skills/sh-gemini-chat/scripts/gemini_chat/cli.py"
  do
    if [[ -f "$cand" ]]; then GEMINI_CLI="$cand"; break; fi
  done
fi

usage() {
  echo "Usage: $0 --out <png> (--brief <vision.md> | --prompt <text>) [--model flash|pro] [--max-polls N]" >&2
  exit 2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --brief) BRIEF="$2"; shift 2 ;;
    --prompt) PROMPT="$2"; shift 2 ;;
    --out) OUT="$2"; shift 2 ;;
    --model) MODEL="$2"; shift 2 ;;
    --max-polls) MAX_POLLS="$2"; shift 2 ;;
    -h|--help) usage ;;
    *) echo "Unknown: $1" >&2; usage ;;
  esac
done

[[ -n "$OUT" ]] || usage
[[ -n "$BRIEF" || -n "$PROMPT" ]] || usage
[[ -n "$GEMINI_CLI" && -f "$GEMINI_CLI" ]] || {
  echo "gemini_chat cli not found. Set GEMINI_CHAT_CLI=…/cli.py" >&2
  exit 1
}

if [[ -n "$BRIEF" ]]; then
  [[ -f "$BRIEF" ]] || { echo "Brief not found: $BRIEF" >&2; exit 1; }
  # Build image prompt: vision brief body + hard free-vision rules
  PROMPT="$(python3 - "$BRIEF" <<'PY'
import sys
from pathlib import Path
brief = Path(sys.argv[1]).read_text(encoding="utf-8")
print("""You are generating ONE didactic medical textbook graphic (Nano Banana / image generation).

Read this vision brief carefully and CREATE AN IMAGE (not a text report):

---
""" + brief + """
---

Rules:
- Output a single high-quality illustration matching Must-see + German claim pins only.
- No English stage chrome ("Action", "Trigger cluster", "EMERGENCY CARD").
- No invented clinical numbers (mmHg, doses) unless they appear as allowed pins in the brief.
- Illustration-semantics: icons/anatomy must match pin *meaning* (e.g. real lower-leg cross-section if asked — not a hexagon).
- Dense, readable German labels where text is needed; avoid huge empty icon wells.
- Structure reference: none (do not clone a known repo layout).
""")
PY
)"
fi

mkdir -p "$(dirname "$OUT")"
echo "graphics-vision-gemini: Gemini Web UI free vision"
echo "  out: $OUT"
echo "  cli: $GEMINI_CLI"

ARGS=(image "$PROMPT" --out "$OUT" --max-polls "$MAX_POLLS" --json)
if [[ -n "$MODEL" ]]; then ARGS+=(--model "$MODEL"); fi

# Headed by default (Google bot checks)
export GEMINI_HEADLESS="${GEMINI_HEADLESS:-0}"
python3 "$GEMINI_CLI" "${ARGS[@]}"

if [[ -f "$OUT" ]]; then
  echo "OK: $OUT ($(wc -c <"$OUT") bytes)"
  if command -v python3 >/dev/null; then
    python3 - "$OUT" <<'PY'
import sys
from pathlib import Path
p = Path(sys.argv[1])
try:
    from PIL import Image
    im = Image.open(p)
    print(f"size: {im.size[0]}×{im.size[1]} {im.mode}")
except Exception as e:
    print(f"(size unread: {e})")
PY
  fi
else
  echo "FAIL: missing $OUT" >&2
  exit 1
fi
