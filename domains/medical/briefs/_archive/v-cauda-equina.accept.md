# Accept record (Media)

- **chapter_id:** V-Cauda / `cauda-equina`
- **brief_path:** `domains/medical/briefs/v-cauda-equina.brief.md`
- **feasibility_path:** `domains/medical/briefs/v-cauda-equina.feasibility.md`
- **spike_paths:** none
- **date:** 2026-07-20
- **media_reviewer:** media-designer (Wave 3 V-Cauda exploration)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** (exploration) | Case-first Master + illness script reachable with stable forms; exploration pilot compose authorized. |
| S0 chapter-opener | accept | kl-voll Master lead; no LO/exam chrome. |
| S1 clinical-case early | accept | **Required first body unit** after opener. No diagnose/therapie fields (no resolution). |
| S2 Gatekeeper `cave` | accept | Immediately after case; one stop only; CES no PT / 112/ED / absolute KI. |
| S3 Big Picture `key-concept` | accept | Mechanism + worst-case + sector boundary; links quiet under. |
| S4 Patientenerklärung `memo` | accept | Short copy-through. |
| S5–S6 feature-grid illness script | accept | Enabling / Insult / Manifestation tiles; epi not hero. |
| S7 Manifestations `styled-table` | accept | Four poles incl. Wurzeltod-Trugschluss. |
| S8 Red Herrings `callout` | accept | Short; no DDx essay here. |
| S9 Safety + screening | accept (approx) | callout + lists OK; no invented scores/ml. |
| S10 Red-Flag-Tabelle | accept | Same triage logic as III-5; copy-through claims. |
| S11 ddx-box | accept | Dangerous first. |
| S12 D-RISC + KI cave | accept | One additional KI cave OK (distinct from gatekeeper). |
| S13 Qualifiers + SBAR | accept | memo + pull-quote. |
| S14–S16 trailing | accept (approx) | Quiet links/sources; Audit claims only trailing. |
| Genre / case-first | accept | fallbasiert case early; teaching after case. |

## If revise

*(not applicable — overall accept for exploration)*

Would have blocked: theory before case; gatekeeper buried; Restharn-ml invented; epi as main column; sources before triage; claim paraphrase.

## Pedagogy / scan checks (Media)

- [x] Main job / gatekeeper findable in first screenful (case + cave)
- [x] Action/decision path louder than links/sources
- [x] Order-critical: case → gate → picture → script → flags
- [x] Urgency weights preserved in red-flag table (copy-through)
- [x] No claim rewrite or new clinical thresholds in layout

## Content freeze pin (production)

- [ ] Freeze record verified — **n/a exploration**
- [ ] `content_revision` matches freeze — **n/a**
- [ ] `brief_class` is **production** — **no** (`exploration`)

## Production compose authorized?

- [ ] **yes** — freeze-gated production
- [x] **no** — exploration only

### Exploration pilot compose authorized?

- [x] **yes** — `pilots/kursbuch-welle-03-compose/chapters/v-cauda.typ` may run with this brief + feasibility
- [ ] **no**

### Media notes for Compose

1. **Case frame first** — `clinical-case` immediately after `chapter-opener`; then gatekeeper `cave`.
2. Do **not** fill Diagnose/Therapie on the vignette.
3. **No Restharn-ml** and **no decompression-hour** numbers anywhere in layout.
4. De-emphasize epidemiology (side-note or omit long block).
5. Red-flag table claims **copy-through** (align with III-5 triage meaning).
6. Links III-5 / IV-2 / II-1 quiet trailing only.
7. Catalog pin `0.1.0`; stable forms + BASIS only.
