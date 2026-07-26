# Spike: KL Script System (Illness Script form language)

Exploration + gold modules for Krankheitslehre presentation forms.  
**Normative rules:** skill refs `kl-illness-script-ontology.md` + `kl-form-library.md`.

## Compile

```bash
# from repo root
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-script-system/spike-recreate.typ \
  dist/spikes/graphics/kl-script-system/recreate.pdf

typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-script-system/spike-wave-o.typ \
  dist/spikes/graphics/kl-script-system/wave-o.pdf

typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-script-system/spike-ambition.typ \
  dist/spikes/graphics/kl-script-system/ambition.pdf

typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-script-system/spike-melanom.typ \
  dist/spikes/graphics/kl-script-system/melanom.pdf
```

## Lib inventory

| Module | Export | Unit / recipe |
|--------|--------|----------------|
| `lib/us-time-scope.typ` | `us-a-erysipel`, `us-b-acs` | kl-urgency-scope-stack / nested-t1 |
| `lib/us-d-dashboard.typ` | `us-d-erysipel` | kl-urgency-scope-dashboard |
| `lib/m-a-mimic.typ` | `m-a-erysipel` | kl-mimic-map |
| `lib/m-b-peel.typ` | `m-b-erysipel` | kl-mimic-peel |
| `lib/discrimination.typ` | `discrimination-erysipel`, `section-four-erysipel` | kl-discrimination |
| `lib/script-core.typ` | `bp-erysipel`, `enabling-erysipel`, `mechanism-erysipel`, `cues-erysipel`, `transfer-erysipel` | BP / enabling / mechanism / cues / transfer |
| `lib/melanom.typ` | `us-melanom`, `abcde-melanom`, `mimic-melanom`, … | Melanom transfer + `kl-abcde-look` candidate |
| (legacy) `v2-*.typ`, `urgency-ladder.typ` | phase1 experiments | superseded |

## PDF outputs (`dist/spikes/graphics/kl-script-system/`)

| File | Content |
|------|---------|
| `recreate.pdf` | P0/P1 code units |
| `wave-o.pdf` | Full Erysipel script-core stack |
| `ambition.pdf` | Free vision + refine + recreates + CES/MSCC |
| `melanom.pdf` | Melanom transfer (exception-T1 + ABCDE) |

## Assets (free vision)

Under `domains/medical/assets/kl-*/` with `MANIFEST.md`.

## Rules

- No form-meta inside figures (content titles only).
- Pins copy-through from Content C.
- Pattern transfer: copy module, swap pins, re-audit free labels.
