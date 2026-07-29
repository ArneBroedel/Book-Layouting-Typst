# Graphics Decision Note — kl-crps (exploration)

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps`
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **date:** 2026-07-30
- **role:** graphics
- **brief_class:** exploration

## Visual units

| unit | form_spec | free vision | audit | planned carrier | notes |
|---|---|---|---|---|---|
| U-urgency+scope | `kl-crps-urgency.form-spec.md` | skip | n/a | **code** | pin-swap `kl-urgency-scope-stack` |
| U-mimic | `kl-crps-mimic.form-spec.md` | `assets/kl-crps-mimic/vision-free-01.png` | **DRIFT** | **code/hybrid** | free = layout provenance; restore NM full pins |
| U-cues | `kl-crps-regional-cues.form-spec.md` | `assets/kl-crps-regional-cues/vision-free-01.png` | **DRIFT** | **code** | free = hierarchy; drop non-pin line |
| U-discrimination | `kl-crps-discrimination.form-spec.md` | skip | n/a | **code** | DDx table |

## Caps

| unit | free gens used | refine used |
|---|---|---|
| mimic | 1/2 | 0/2 |
| regional-cues | 1/2 | 0/2 |

## G3 done (2026-07-30)

| artifact | path |
|---|---|
| Typst module | `domains/medical/lib/typst/kl-wave6/crps.typ` (`us-crps`, `mimic-crps`, `cues-crps`, `ddx-crps`) |
| Spike driver | `toolset/compose/spikes/graphics/kl-crps/spike-recreate.typ` |
| PDF | `dist/spikes/graphics/kl-crps/recreate.pdf` |

## Next

1. Optional: second free gen or refine free PNGs (still DRIFT for accept-asset)  
2. Exploration Accept record (`kl-crps.accept.md`) if Human OK with code winners  
3. Full chapter compose (prose + modules) under monorepo pilot path → book PDF  

## Do not

- accept-asset on DRIFT free PNGs as final production claims  
- anatomy free vision without H-Gfx  
- production compose authorization without freeze  
