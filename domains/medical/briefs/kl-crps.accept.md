# Accept Record — CRPS / Morbus Sudeck (exploration)

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps`
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **form_spec_path:** `kl-crps-urgency` · `kl-crps-mimic` · `kl-crps-regional-cues` · `kl-crps-discrimination`
- **feasibility_path:** `domains/medical/briefs/kl-crps.feasibility.md`
- **graphics_decision_path:** `domains/medical/briefs/kl-crps.graphics.md`
- **spike_paths:** `toolset/compose/spikes/graphics/kl-crps/spike-recreate.typ` → `dist/spikes/graphics/kl-crps/recreate.pdf`
- **date:** 2026-07-30
- **media_reviewer:** Media (agent draft — **Human confirm** for production bar)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| overall | accept | exploration — dual failure-mode danger, regional cue board, mimic peel, multi-T1 urgency + SCOPE, DDx hard. Code recreate meets Must-see with full pins. |
| S0 danger / Big Picture | accept | callout + prose copy-through (danger once at open) |
| §1–2 enabling / mechanism | accept | compact prose |
| U-cues | accept | code winner (`cues-crps`) — free vision DRIFT provenance only |
| §4 FA / NM | accept | for/against callouts + NM chips only in mimic (no CAVE duplicate) |
| U-mimic | accept | code winner (`mimic-crps`) — free vision composition reference |
| U-urgency + SCOPE | accept | code (`us-crps`) multi-T1 one stop card |
| U-discrimination | accept | code (`ddx-crps`) |
| §6 Fall | accept | open questions, no spoiler key in layout |

## Graphic winners

| unit_id | accepted winner | form_spec Must-see met? | note |
|---|---|---|---|
| U-urgency+scope | **code** `us-crps()` | yes | free vision skipped |
| U-mimic | **code** `mimic-crps()` | yes | free PNG DRIFT (EN/chip shorten) — not accept-asset |
| U-cues | **code** `cues-crps()` | yes | free PNG DRIFT provenance |
| U-discrimination | **code** `ddx-crps()` | yes | table |

Free vision paths kept as composition provenance only:

- `domains/medical/assets/kl-crps-mimic/vision-free-01.png`
- `domains/medical/assets/kl-crps-regional-cues/vision-free-01.png`

## Pedagogy / scan checks (Media)

- [x] Main job / gatekeeper findable (T1 multi-trigger + danger strip)
- [x] Action/decision path louder than sources
- [x] Order-critical TIME stack ordered
- [x] Urgency weights not flattened
- [x] Form Spec Must-see met by code winners
- [x] Free-vision candidates reviewed (DRIFT → code)
- [x] Production path after vision: recreate code (not accept-asset free)
- [x] Asset winner: none final
- [x] No claim rewrite

## Content freeze pin (production)

- [ ] Freeze record verified — **n/a exploration**
- [ ] content_revision matches freeze — n/a
- [ ] brief_class production — **no** (exploration)

## Exploration compose authorized?

- [x] yes — pilot layout under smoke/creative validate; not a production quality claim
- [ ] no

Exploration compose authorized: yes

## Production compose authorized?

- [ ] yes — requires freeze + production brief_class + production Accept
- [x] no

Production compose authorized: no

### Media notes for Compose

1. Embed code modules from `domains/medical/lib/typst/kl-wave6/crps.typ`.
2. Do not embed free-vision PNGs as claim carriers.
3. No process meta banner in learner PDF (route/accept hold provenance).
4. Full prose copy-through from C path; Quellen at end.
5. Redundancy: Gefahr once (opener); NM chips only in mimic; DDx title once (chapter heading).
