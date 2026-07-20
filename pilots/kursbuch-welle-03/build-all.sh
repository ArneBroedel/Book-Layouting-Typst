#!/usr/bin/env bash
# Build combined + per-chapter PDFs for Kursbuch pilot.
set -euo pipefail
Root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
Pilot="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
Out="$Root/dist/kursbuch-pilot"
mkdir -p "$Out"
Flags=(--root "$Root" --ignore-system-fonts --font-path fonts)

echo "Converting Markdown…"
python3 "$Pilot/convert_md_to_typ.py"

echo "Building combined product…"
typst compile "${Flags[@]}" "$Pilot/main.typ" "$Out/kursbuch-welle-03.pdf"
ls -la "$Out/kursbuch-welle-03.pdf"

# Per-chapter wrappers
mkdir -p "$Pilot/_single" "$Out/chapters"
for f in "$Pilot"/chapters/*.typ; do
  slug="$(basename "$f" .typ)"
  wrap="$Pilot/_single/${slug}.typ"
  cat > "$wrap" << EOF
#import "/packages/bookkit/lib.typ": *
#import "/packages/bookkit-didactics/lib.typ": *
#set document(title: "Kursbuch pilot — ${slug}")
#show: setup-typography()
#show: setup-pages()
#include "../chapters/${slug}.typ"
EOF
  echo "  chapter $slug"
  typst compile "${Flags[@]}" "$wrap" "$Out/chapters/${slug}.pdf"
done

echo "Done. Outputs under $Out"
ls -la "$Out" "$Out/chapters"
