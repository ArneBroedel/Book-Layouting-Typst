# Accept record — KL Wave-6 (closing transfers)

- **chapter_id:** campaign `kl-wave6` (Sepsis · Gicht · LE)
- **brief_path:** `kl-sepsis.brief.md` · `kl-gicht.brief.md` · `kl-le.brief.md`
- **form_spec_path:** `kl-sepsis-urgency|mimic|flag-cluster` · `kl-gicht-urgency|mimic` · `kl-le-urgency|mimic`
- **feasibility_path:** — (grammar code-first; no separate Tech feasibility note)
- **graphics_decision_path:** — (no free vision this wave)
- **spike_paths:** `toolset/compose/spikes/graphics/kl-wave6/spike-grammar.typ` → `dist/spikes/graphics/kl-wave6/grammar.pdf`
- **content_maps:** `domains/medical/briefs/_wave6/*.content-map.md`
- **date:** 2026-07-29
- **media_reviewer:** Media (agent) · exploration Accept
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| overall campaign | **accept** | Grammar transfer complete; new `kl-flag-cluster` realized |
| Sepsis flag-cluster | **accept** | code · three equal chips + already-one → 112 · qSOFA secondary non-clearance |
| Sepsis urgency nested-T1 | **accept** | code · 6 clusters one T1 · T2/T4 · SCOPE |
| Sepsis mimic | **accept** | code · 5 frames |
| Gicht urgency stack | **accept** | code · T1–T4 weights; T2 hot mono without fever |
| Gicht mimic | **accept** | code · 3 frames · known-gout no free pass |
| LE urgency nested-T1 | **accept** | code · High-Risk T1 · stable-suspect T2 · Wells SCOPE only |
| LE mimic | **accept** | code · 4 frames |
| Free vision any unit | **reject / skip** | planned skip; anatomy pause holds |
| Production compose | **no** | exploration only |

## Graphic winners

| unit_id | winner | Form Spec Must-see | note |
|---|---|---|---|
| U-flag-cluster (sepsis) | **code** `flag-cluster-sepsis()` | yes | new recipe |
| U-urgency (sepsis) | **code** `us-sepsis()` | yes | nested multi-T1 |
| U-mimic (sepsis) | **code** `mimic-sepsis()` | yes | |
| U-urgency (gicht) | **code** `us-gicht()` | yes | T3 present |
| U-mimic (gicht) | **code** `mimic-gicht()` | yes | |
| U-urgency (le) | **code** `us-le()` | yes | Wells brake in SCOPE |
| U-mimic (le) | **code** `mimic-le()` | yes | |

## Pedagogy / scan checks (Media)

- [x] Main job / gatekeeper findable (flag-cluster + T1 solid)
- [x] Action/decision path louder than sources
- [x] Order-critical steps read as ordered (TIME stack)
- [x] Urgency weights not flattened (T1 solid danger; T2 warning; T4 teal)
- [x] Form Spec Must-see met by code winners
- [x] No free-vision candidates this wave
- [x] No claim rewrite (pins from content maps / C)
- [x] Scores not exclusion algorithms in figures

## Content freeze pin (production)

- [ ] Freeze record verified — **N/A exploration**
- [ ] `brief_class` is **production** — **no** (exploration)

## Production compose authorized?

- [ ] **yes**
- [x] **no** — exploration Accept only

### Media notes for Compose (when freeze later)

1. Prefer embedding `flag-cluster-sepsis` **adjacent to** nested T1 (complement, not replace).  
2. Gicht T2 must stay loud for load-failing mono without fever.  
3. LE: Wells/YEARS text only inside SCOPE frame.

## Wishlist residual

| residual | severity |
|---|---|
| Optional later: full BP/enabling/cues/transfer pages per chapter | low (grammar core done) |
| Optional discrimination FA+NM code for Sepsis/LE | low |
| Anatomy free vision | paused — H-Gfx only |

## Harvest targets

- Recipe `kl-flag-cluster` → library + playbook 09  
- Wave-6 row in form library  
- Track close: expansion matrix complete for track purposes  
