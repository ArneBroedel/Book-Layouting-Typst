#!/usr/bin/env bash
# Reconcile book-production board with filesystem hints.
# Usage: ./scripts/book-production-status.sh <book-id>
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

BOOK_ID="${1:-}"
if [[ -z "$BOOK_ID" ]]; then
  echo "Usage: $0 <book-id>" >&2
  echo "Boards:" >&2
  ls -1 toolset/orchestration/book-production 2>/dev/null || echo "  (none yet)"
  exit 2
fi

DIR="toolset/orchestration/book-production/$BOOK_ID"
if [[ ! -d "$DIR" ]]; then
  echo "No board dir: $DIR" >&2
  echo "Create via skill book-production-orchestrator kickoff." >&2
  exit 1
fi

echo "=== Book production status: $BOOK_ID ==="
echo "Dir: $DIR"
echo

for f in kickoff.md board.md route.md run-log.md; do
  if [[ -f "$DIR/$f" ]]; then
    echo "[ok] $f ($(wc -l < "$DIR/$f") lines)"
  else
    echo "[missing] $f"
  fi
done

echo
echo "=== Board head ==="
if [[ -f "$DIR/board.md" ]]; then
  head -n 50 "$DIR/board.md"
fi

echo
echo "=== Quality cell hints (board enums — not evidence) ==="
if [[ -f "$DIR/board.md" ]]; then
  # Best-effort: surface presence of T3 resume fields. Humans/agents still read tables.
  for key in design_clean visual_clean macro_vc quality_packet open_assets needs_open_assets scope playbook_pin production_bridge; do
    if grep -q "$key" "$DIR/board.md" 2>/dev/null; then
      echo "[present] $key"
    else
      echo "[absent]  $key  (legacy board? update from board.template.md)"
    fi
  done
  echo "(validate OK ≠ Visual CLEAN ≠ Accept — cells are resume index only)"
else
  echo "(no board.md)"
fi

echo
echo "=== Route (current) ==="
if [[ -f "$DIR/route.md" ]]; then
  cat "$DIR/route.md"
else
  echo "(no route.md)"
fi

echo
echo "=== Recent run-log ==="
if [[ -f "$DIR/run-log.md" ]]; then
  tail -n 40 "$DIR/run-log.md"
fi

echo
echo "=== Filesystem hints (briefs / form-specs) ==="
n_brief=$(find domains/medical/briefs -name '*.brief.md' 2>/dev/null | wc -l | tr -d ' ')
n_form=$(find domains/medical/briefs -name '*.form-spec.md' 2>/dev/null | wc -l | tr -d ' ')
n_vision=$(find domains/medical/briefs -name '*.vision.md' 2>/dev/null | wc -l | tr -d ' ')
n_gfx=$(find domains/medical/briefs -name '*.graphics.md' 2>/dev/null | wc -l | tr -d ' ')
n_accept=$(find domains/medical/briefs -name '*.accept.md' 2>/dev/null | wc -l | tr -d ' ')
echo "briefs=$n_brief form-specs=$n_form visions=$n_vision graphics=$n_gfx accepts=$n_accept"

echo
echo "=== Spike modules ==="
find toolset/compose/spikes/graphics -path '*/lib/*.typ' 2>/dev/null | head -30 || true

echo
echo "Done. Orchestrator should reconcile board cells (incl. design_clean/visual_clean/macro_vc/quality_packet/open_assets) against artifact paths."
