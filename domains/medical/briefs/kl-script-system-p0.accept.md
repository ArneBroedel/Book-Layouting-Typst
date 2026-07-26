# Accept record (Media) — exploration

- **chapter_id:** KL-Script-System P0
- **brief_path:** `domains/medical/briefs/_explorations/kl-form-space.md`
- **form_spec_path:**  
  - `domains/medical/briefs/kl-u-urgency-scope.form-spec.md`  
  - `domains/medical/briefs/kl-u-mimic.form-spec.md`
- **feasibility_path:** n/a (graphics spike only)
- **graphics_decision_path:** `domains/medical/briefs/kl-script-system.graphics.md`
- **spike_paths:** `dist/spikes/graphics/kl-script-system/recreate.pdf`
- **date:** 2026-07-26
- **media_reviewer:** Human + media (exploration)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| overall P0 | **accept** | First impression OK after meta-caption fix |
| US-A (Erysipel TIME+SCOPE) | **accept** | Optical SCOPE separation; no meta „keine Dringlichkeitsstufe“ |
| US-B (ACS multi-T1) | **accept** | Nested triggers inside T1 |
| M-A (mimic map) | **accept** | Frame→danger; content title only |

## Graphic winners

| unit_id | accepted winner | form_spec Must-see met? | note |
|---|---|---|---|
| U-urgency+scope US-A | **code** | yes | Band-default candidate |
| U-urgency+scope US-B | **code** | yes | High-stakes multi-T1 |
| U-mimic M-A | **code** | yes | M-B free vision deferred |

## If revise

— (done: removed in-figure form-language explanations)

## Pedagogy / scan checks (Media)

- [x] Main job findable
- [x] Action path louder than notes
- [x] Order T1→T2→T4 readable
- [x] Urgency weights not flattened
- [x] Form Spec Must-see met
- [x] No claim rewrite
- [x] **No form-meta inside figure** (Human rule 2026-07-26)

## Production compose authorized?

- [ ] **yes**
- [x] **no** — exploration only; no freeze pin

### Media notes for Compose (later)

1. Export modules as composable `#us-a-…()` / `#m-a-…()` with content-driven pins.
2. Keep SCOPE optically distinct (geometry), never explain the axis in print.
3. Spike footers are design notes only — strip for production.
