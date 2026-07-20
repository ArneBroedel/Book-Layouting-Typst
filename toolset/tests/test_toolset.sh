#!/usr/bin/env bash
# Durable in-repo verification for bookkit toolset MVP.
# Drives real shipped entry points (scripts/bookkit + typst compile).
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$Root"
Fail=0
log() { echo "$*"; }

assert_pdf() {
  local p="$1"
  if [[ ! -f "$p" ]]; then
    log "FAIL missing PDF: $p"
    Fail=1
    return
  fi
  local sz
  sz=$(stat -c%s "$p")
  if [[ "$sz" -le 0 ]]; then
    log "FAIL empty PDF: $p"
    Fail=1
    return
  fi
  log "OK pdf $p ($sz bytes)"
}

log "=== 1. doctor ==="
./scripts/bookkit doctor --root "$Root" || Fail=1

log "=== 2. minimal consumer (twice for consistency) ==="
./scripts/bookkit build --root "$Root" --entry toolset/examples/minimal/main.typ --out dist/toolset/minimal.pdf || Fail=1
assert_pdf dist/toolset/minimal.pdf
./scripts/bookkit build --root "$Root" --entry toolset/examples/minimal/main.typ --out dist/toolset/minimal.pdf || Fail=1
assert_pdf dist/toolset/minimal.pdf

log "=== 3. facet smoke ==="
./scripts/bookkit build --root "$Root" --entry toolset/examples/facet-smoke/main.typ --out dist/toolset/facet-smoke.pdf || Fail=1
assert_pdf dist/toolset/facet-smoke.pdf

log "=== 4. foundation-only does not require facet file open ==="
# Minimal import graph: only packages/bookkit (comments may mention the facet)
if grep -E '^#import .*bookkit-didactics' toolset/examples/minimal/main.typ; then
  log "FAIL minimal imports didactics"
  Fail=1
else
  log "OK minimal has no didactics import"
fi

log "=== 5. reuse pilot ==="
./scripts/bookkit build --root "$Root" --entry pilots/reuse-datasheet/main.typ --out dist/toolset/reuse-datasheet.pdf || Fail=1
assert_pdf dist/toolset/reuse-datasheet.pdf

log "=== 6. kursbuch combined ==="
if [[ ! -f pilots/kursbuch-welle-03/chapters/iii5.typ ]]; then
  python3 pilots/kursbuch-welle-03/convert_md_to_typ.py
fi
./scripts/bookkit build --root "$Root" --entry pilots/kursbuch-welle-03/main.typ --out dist/kursbuch-pilot/kursbuch-welle-03.pdf || Fail=1
assert_pdf dist/kursbuch-pilot/kursbuch-welle-03.pdf

log "=== 7. all 10 chapter PDFs ==="
for slug in ii1 i4 iii2 iii5 v-cauda iv2 iv4 v-sept vi1 vii1; do
  assert_pdf "dist/kursbuch-pilot/chapters/${slug}.pdf"
done

log "=== 8. package surface files ==="
for f in packages/bookkit/lib.typ packages/bookkit/typst.toml packages/bookkit-didactics/lib.typ \
  toolset/skill-pack/bookkit/SKILL.md toolset/starter/main.typ scripts/bookkit; do
  if [[ -f "$f" ]]; then log "OK artifact $f"; else log "FAIL missing $f"; Fail=1; fi
done

if [[ $Fail -ne 0 ]]; then
  log "RESULT: FAIL"
  exit 1
fi
log "RESULT: PASS"
