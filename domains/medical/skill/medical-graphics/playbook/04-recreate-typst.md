# Playbook 04 — Typst recreate (G3 R1)

## Goal

Claim-safe **code** carrier inspired by free vision composition; bookkit tokens + FA6.

## Steps

1. Scaffold (or use init script):

```text
toolset/compose/spikes/graphics/<slug>/
  lib/<module>.typ
  spike-recreate.typ
  spike-compare.typ
```

2. Import:

```typst
#import "/packages/bookkit/theme.typ": palette
#import "@preview/fontawesome:0.6.1": *
#fa-version("6")
```

3. Encode Form Spec zones with **claim pins only**.  
4. Match free vision hierarchy (loud cards, arrows, banners) without inventing text.  
5. Compile always:

```bash
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/<slug>/spike-recreate.typ \
  dist/spikes/graphics/<slug>/recreate.pdf
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 200 …/spike-recreate.typ …/recreate-p1.png
```

6. Compare free vs recreate (`spike-compare.typ`).  
7. Export function e.g. `#entscheidungs-flow-…()` for pilot embed.

## Patterns

| Need | Pattern |
|---|---|
| Hard stop | solid `palette.danger` card |
| Framework OS | teal header; danger only on R-first |
| R/I/S trio | 3-column subcards |
| Default-to-Danger | danger sub-banner |
| Dual layout | `layout: "vertical" \| "landscape"` (II-1 recipe) |

## Stub

`toolset/compose/spikes/graphics/_templates/lib/module.typ`

## Cap

1 solid recreate + polish (icons, chips) — not endless redesign.
