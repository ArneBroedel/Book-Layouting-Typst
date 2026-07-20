# Spikes

Small experiments to prove an ambitious Media ideal (flowchart, urgency lanes, custom diagram, new page rhythm) before rolling into a chapter.

**Policy:** `toolset/compose/CREATIVE-COMPOSE.md` — spikes are first-class under creative-first compose.

## Rules

1. One spike goal (one visual / layout pattern).  
2. **Full toolkit allowed** — bookkit, didactics, CeTZ, Fletcher, custom `#let`, page helpers.  
3. Output PDF/PNG under `dist/spikes/` or pilot folder — not production SoT until Accept + compose.  
4. Media Accept decides promote vs. discard vs. fallback.  
5. Budget: e.g. ≤1–2 spikes per chapter when the ideal is ambitious; more if Human prioritizes quality.  
6. No auto-heal loops — one build, evaluate, then decide.

## When to spike

- Branching clinical algorithm that outgrows `protocol-steps`
- Urgency / triage lanes that a flat table would flatten
- Case double-page / feature spread
- Any Brief wishlist marked high severity

## Example

```bash
# from repo root
typst compile --root . --ignore-system-fonts --font-path fonts \
  path/to/spike.typ dist/spikes/spike-foo.pdf

# or bookkit wrapper if entry is a consumer-style main
./scripts/bookkit build --root . --entry path/to/spike.typ
```
