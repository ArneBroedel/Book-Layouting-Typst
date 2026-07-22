#!/usr/bin/env bash
# Scaffold medical-graphics spike tree for a slug + optional recipe id.
# Usage: ./scripts/graphics-spike-init.sh <slug> [recipe-id]
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$Root"

SLUG="${1:-}"
RECIPE="${2:-}"
if [[ -z "$SLUG" ]]; then
  echo "Usage: $0 <slug> [recipe-id]" >&2
  echo "  recipe-id: branching-emergency | leitsymptom-vertical-flow | hard-stop-protocol | framework-os-sequence" >&2
  exit 2
fi

SPIKE="toolset/compose/spikes/graphics/$SLUG"
ASSET="domains/medical/assets/$SLUG"
TPL="toolset/compose/spikes/graphics/_templates"

mkdir -p "$SPIKE/lib" "$ASSET" "dist/spikes/graphics/$SLUG"

if [[ ! -f "$SPIKE/lib/module.typ" ]]; then
  cp "$TPL/lib/module.typ" "$SPIKE/lib/module.typ"
fi
if [[ ! -f "$SPIKE/spike-recreate.typ" ]]; then
  sed "s|<slug>|$SLUG|g" "$TPL/spike-recreate.typ" > "$SPIKE/spike-recreate.typ" 2>/dev/null \
    || cp "$TPL/spike-recreate.typ" "$SPIKE/spike-recreate.typ"
fi

if [[ ! -f "$ASSET/MANIFEST.md" ]]; then
  cat > "$ASSET/MANIFEST.md" <<EOF
# Assets — $SLUG

| file | role | notes |
|---|---|---|
| *(pending)* | | recipe: ${RECIPE:-tbd} |

Form Spec: \`domains/medical/briefs/$SLUG.form-spec.md\` (when Media ready)
EOF
fi

cat > "$SPIKE/README.md" <<EOF
# Graphics spikes — $SLUG

Recipe: \`${RECIPE:-tbd}\`

## Pipeline
1. Form Spec: \`domains/medical/briefs/$SLUG.form-spec.md\`
2. Vision + free gen (playbook 02)
3. Claim audit (playbook 03)
4. Edit \`lib/module.typ\` → export function
5. \`typst compile --root . --ignore-system-fonts --font-path fonts spike-recreate.typ dist/spikes/graphics/$SLUG/recreate.pdf\`

See: \`domains/medical/skill/medical-graphics/playbook/00-overview.md\`
EOF

echo "OK: $SPIKE"
echo "OK: $ASSET"
echo "Next: Form Spec + vision brief, then edit lib/module.typ"
