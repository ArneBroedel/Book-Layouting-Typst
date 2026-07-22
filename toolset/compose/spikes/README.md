# Spikes

Small experiments to prove an ambitious Media ideal (flowchart, urgency lanes, custom diagram, new page rhythm, **or graphic asset path**) before rolling into a chapter.

**Policy:** `toolset/compose/CREATIVE-COMPOSE.md` — spikes are first-class under creative-first compose.  
**Graphics modes:** skill `medical-graphics` when comparing code vs image assets.

## Spike types

| Type | Goal | Typical owner |
|---|---|---|
| `layout` | Page rhythm, spreads, form chrome | Tech |
| `vision-free` | AI free vision (content + didactic only; **no** layout template) | Graphics |
| `recreate-code` | Typst/Fletcher/CeTZ recreate of free vision | Tech (+ Graphics) |
| `recreate-hybrid` | SVG/raster form + Typst labels on slots | Graphics |
| `refine-ai` | AI refine with book-visual-standards | Graphics |
| `code-graphic` | CeTZ/Fletcher/custom Typst diagram | Tech (+ Graphics) |
| `asset-graphic` | SVG/PNG embed via figure helpers | Graphics |
| `ab-pair` | Same unit: multiple carriers, comparable PNG crops | Graphics + Tech |

**Free-first sequence (ambitious graphics):** `vision-free` → pick direction → `recreate-*` or `refine-ai` or promote asset → Media Accept.  
Wrappers: `scripts/graphics-vision-agy.sh`, `scripts/graphics-refine-agy.sh`.

## Rules

1. One spike goal (one visual / layout pattern) — except `ab-pair` (two variants of **same** unit/claims).  
2. **Full toolkit allowed** — bookkit, didactics, CeTZ, Fletcher, custom `#let`, page helpers, **image assets**.  
3. Output PDF/PNG under `dist/spikes/` or `dist/spikes/graphics/<slug>/` — not production SoT until Accept + compose.  
4. Media Accept decides promote vs. discard vs. fallback (incl. A/B winner).  
5. Budget: e.g. ≤1–2 spikes per chapter when the ideal is ambitious; **≤2 A/B pairs** default for graphics; more if Human prioritizes quality.  
6. No auto-heal loops — one build, evaluate, then decide.  
7. Production assets: promote to `domains/medical/assets/<slug>/` (or consumer `assets/`) with manifest before compose.

## When to spike

- Branching clinical algorithm that outgrows `protocol-steps`
- Urgency / triage lanes that a flat table would flatten
- Case double-page / feature spread
- Any Brief wishlist marked high severity
- Unclear **code vs asset/hybrid** for a Visual-Unit (`ab-pair`)

## Example

```bash
# from repo root
typst compile --root . --ignore-system-fonts --font-path fonts \
  path/to/spike.typ dist/spikes/spike-foo.pdf

# visual compare crop
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 200 --pages 1 \
  path/to/spike.typ dist/spikes/graphics/<slug>/code-p1.png

# or bookkit wrapper if entry is a consumer-style main
./scripts/bookkit build --root . --entry path/to/spike.typ
```
