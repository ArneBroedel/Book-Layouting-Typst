# Spike: KL Wave-5 Grammar (code-first)

Code-first Typst modules for Wave-5 monographs **MI**, **Stroke**, **Anaphylaxie**.  
Grammar transfer from `kl-script-system` (US nested multi-T1, mimic map, discrimination).  
**Normative pins:** Form Specs under `domains/medical/briefs/kl-{mi,stroke,anaphylaxie}-*.form-spec.md`.

## Compile

```bash
# from repo root
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-wave5/spike-grammar.typ \
  dist/spikes/graphics/kl-wave5/grammar.pdf
```

## Lib inventory

| Module | Export | Unit / recipe |
|--------|--------|----------------|
| `lib/mi.typ` | `us-mi`, `mimic-mi`, `discrimination-mi`, `section-four-mi` | nested-T1 (4×112) + mimic 4 + FA/NM |
| `lib/stroke.typ` | `us-stroke`, `mimic-stroke`, `fast-stroke-code` | nested-T1 (4×112) + mimic 4 + FAST code fallback |
| `lib/anaphylaxie.typ` | `us-anaphylaxie`, `mimic-anaphylaxie` | nested-T1 (5×112) + mimic 5 |

Building blocks (`time-tier`, `scope-frame`) are imported from  
`toolset/compose/spikes/graphics/kl-script-system/lib/us-time-scope.typ`.

## Rules (hard)

- **German only** in figures; no form-meta (no „Trigger cluster“, „keine Dringlichkeitsstufe“, EN stage titles).
- **Multi-T1 = one solid T1 card** with internal trigger list + shared ACTION.
- **SCOPE orthogonal** (hairline + square frame after TIME stack).
- **T3 omit** when content silent (all three chapters).
- Pins copy-through C / Form Specs only.

## PDF

| File | Content |
|------|---------|
| `dist/spikes/graphics/kl-wave5/grammar.pdf` | MI urgency+§4 · Stroke urgency+mimic+FAST · Anaphylaxie urgency+mimic |

## Out of scope (this spike)

- Suizid / Kompartment (later Wave-5 chapters)
- FAST free vision (required ambition — code cascade is fallback only)
- Optional MI radiation topography / Anaphylaxie protocol-spine free vision
