#!/usr/bin/env bash
# Smoke tests for unified bookkit CLI surface (workspace-split phase 1b).
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$Root"
Fail=0
log() { echo "$*"; }

run_ok() {
  local label="$1"; shift
  if "$@"; then
    log "OK $label"
  else
    log "FAIL $label (exit $?)"
    Fail=1
  fi
}

run_fail() {
  local label="$1"; shift
  if "$@" >/dev/null 2>&1; then
    log "FAIL $label (expected non-zero)"
    Fail=1
  else
    log "OK $label (failed as expected)"
  fi
}

log "=== bookkit CLI smoke ==="

run_ok "help" ./scripts/bookkit --help
run_ok "graphics help" ./scripts/bookkit graphics --help
run_ok "prepress help" ./scripts/bookkit prepress --help
run_fail "unknown command" ./scripts/bookkit not-a-real-command
run_fail "unknown graphics sub" ./scripts/bookkit graphics not-a-sub

run_ok "doctor" ./scripts/bookkit doctor --root "$Root"

run_ok "catalog check" ./scripts/bookkit catalog check

run_ok "validate pass_minimal" ./scripts/bookkit validate \
  --typ toolset/compose/fixtures/pass_minimal/chapter.typ \
  --content toolset/compose/fixtures/pass_minimal/content.md \
  --accept toolset/compose/fixtures/pass_minimal/accept.md \
  --genre-minima toolset/compose/fixtures/pass_minimal/genre-minima.yaml \
  --root . \
  --skip-compile

run_ok "prepress dpi (src assets)" ./scripts/bookkit prepress dpi --paths src/assets

# manifest: pick any gold asset dir that exists
unit=""
for cand in kl-us-d-urgency kl-compartment-spatial kl-sepsis; do
  if [[ -d "domains/medical/assets/$cand" ]]; then
    unit="$cand"
    break
  fi
done
if [[ -n "$unit" ]]; then
  run_ok "graphics manifest $unit" ./scripts/bookkit graphics manifest --unit "$unit"
else
  log "SKIP graphics manifest (no sample asset unit)"
fi

run_ok "minimal build" ./scripts/bookkit build \
  --root "$Root" \
  --entry toolset/examples/minimal/main.typ \
  --out dist/toolset/minimal-cli-smoke.pdf

if [[ $Fail -ne 0 ]]; then
  log "RESULT: FAIL"
  exit 1
fi
log "RESULT: PASS"
