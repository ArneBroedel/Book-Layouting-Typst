# Spike: KL Wave-6 Grammar (closing transfers)

Code-first Typst modules for Wave-6 monographs **Sepsis-Flags**, **Gicht**, **Lungenembolie**.  
Grammar transfer from `kl-script-system` + Wave-5 patterns.  
**Normative pins:** Form Specs under `domains/medical/briefs/kl-{sepsis,gicht,le}-*.form-spec.md`.

## Compile

```bash
# from repo root
mkdir -p dist/spikes/graphics/kl-wave6
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-wave6/spike-grammar.typ \
  dist/spikes/graphics/kl-wave6/grammar.pdf
```

## Lib inventory

| Module | Export | Unit / recipe |
|--------|--------|----------------|
| `lib/sepsis.typ` | `flag-cluster-sepsis`, `us-sepsis`, `mimic-sepsis` | **`kl-flag-cluster`** + nested-T1 (6×112) + mimic 5 |
| `lib/gicht.typ` | `us-gicht`, `mimic-gicht` | `kl-urgency-scope-stack` T1–T4 + mimic 3 |
| `lib/le.typ` | `us-le`, `mimic-le` | nested-T1 + mimic 4 + Wells SCOPE brake |

Building blocks (`time-tier`, `scope-frame`) from  
`toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ`.

## Rules (hard)

- **German only** in figures; no form-meta  
- **Multi-T1 = one solid T1 card** with internal trigger list  
- **SCOPE orthogonal** (hairline + square frame after TIME stack)  
- **T3 only when C has it** (Gicht yes; Sepsis/LE no)  
- Scores (qSOFA, Wells) **never** as exclusion algorithms in the figure  
- Pins copy-through C / Form Specs only  
- **No anatomy free vision** (anatomy pause)

## PDF

| File | Content |
|------|---------|
| `dist/spikes/graphics/kl-wave6/grammar.pdf` | Flag-cluster · Sepsis US+mimic · Gicht US+mimic · LE US+mimic |
