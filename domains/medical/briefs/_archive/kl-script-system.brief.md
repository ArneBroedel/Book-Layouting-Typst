# Media Brief

- **chapter_id / slug:** KL-Script-System / `kl-script-system` (band-level, not one disease)
- **genre:** lerntext / illness-script Master (Teil V/VI) — complementary to notfall-karte / leitsymptom slaves
- **content_source:** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/` (88 monographs; demo pins from `chapter-v-10-erysipel.md`, `chapter-v-1-myokardinfarkt.md`)
- **content_status:** format-ok / audit GRÜN (pilot; human_review still required upstream)
- **content_revision:** exploration — wave `2026-07-welle-06-kl-full`
- **brief_class:** exploration
- **freeze_path:** n/a
- **author_media:** media + exploration drive
- **date:** 2026-07-26
- **catalog_version_seen:** 0.1.0 — ideation free

> Band-level exploration: design language for **all** Krankheitslehre monographs. Does **not** authorize production compose. Implements stepwise per `briefs/_explorations/welle-06-kl-implementation-roadmap.md`.

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| F1 Script Frame | reference+structure | Orient chapter path | Box monotony / wrong chrome | Script shell teal framework; not full red wall | lerntext |
| F2 Urgency Ladder §5 | decision / danger | Choose 112 / NA / treat / scope | Flat table equal weight | Weighted urgency lanes / stacked danger | triage weight |
| F3 Cue Matrix §3 | recognition | Scan 4 clinical domains | Prose wall | 2×2 or table cue cluster | cue cluster |
| F4 Four-Pole §4 | distinguish | Suspect vs not vs miss vs mimic | Essay / wrong mimic direction | Four-pole grid + mask strip | dual contrast |
| F5 Mechanism §2 | mechanism | Understand chain | Decorative chain | Segmented cause→effect | dual coding |
| F6 Enabling §1 | recognition | Profile who/when | Bullet soup | Triptych risks/context/time | — |
| F7 Case §6 | recognition | Transfer without spoiler | Spoiler solution | Case card + 3 questions empty | fallbasiert |
| F8 DDx | comparison | Distinguish after action | DDx before action | Minimal contrast trailing-mid | — |
| F9 Qualifiers | reference | Handover language | Mid-chapter noise | Quiet strip | — |
| F10 Score+Scope | decision | Use score without false rule-out | Score as diagnosis | Score strip + thick scope bar | — |
| S* disease modules | varies | Disease-specific job | One-off art | Per roadmap Phases 5–9 | free-vision when map |

## Overall presentation goal

A **recognizable Illness-Script form language** across 88 monographs so learners always know where Enabling, Cues, Suspicion, Urgency, and Transfer live — while **urgency is never flattened**, **mimicry keeps the right direction** (danger behind harmless MSK), and **Master (V) does not replace Slave action cards (III/IV)**.

Success: under scan stress, same visual grammar; under clinical stress, correct tier chosen without invented thresholds.

## Section plan (free language — no bookkit requirement)

| id | content anchor | ideal presentation | priority / page intent |
|---|---|---|---|
| P1 | F2 Urgency Ladder | Multiple variants spike: table / lanes / hard-stop stack / multi-112 bundle | **Phase 1 highest** |
| P1 | F3 Cue Matrix | Table vs 2×2 tiles | Phase 1 |
| P1 | F4 Four-Pole | 2×2 + trügerisch mask strip | Phase 1 |
| P1 | F1 shell notes | Page rhythm sketch for later Alpha | Phase 1 shell only |
| P2 | F5–F10 | Full script rest + one Alpha page | Phase 2 |
| P3 | V-Alpha/Beta/Gamma | Full kl-kurz layouts same content | Phase 3 |
| P4 | kl-voll shells | Case-first / core / slave-aware | Phase 4 |
| P5–9 | S1–S20 | Maps, scores, sequences, psych, cluster | later |
| P10 | Harvest | Guide + component wishlist | end |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| Urgency Ladder component (weighted tiers) | 88× §5; flat tables fail stress scan | high |
| Four-pole suspicion component | 88× §4 structure | high |
| Cue matrix 2×2 | 88× §3 | high |
| Illness-script shell pattern | band consistency | medium |
| Body-map hybrid pipeline | CES/MSCC/Dermatom/Dekubitus | high (later phases) |
| Score-with-scope | prevent false rule-out chrome | medium |

## Form Spec handoff (ambitious visual units)

| unit_id | form_spec_path | ambition |
|---|---|---|
| F2 | `domains/medical/briefs/kl-f2-urgency-ladder.form-spec.md` | optional (code-first; free-vision optional) |
| F3 | `domains/medical/briefs/kl-f3-cue-matrix.form-spec.md` | skip free-vision (code) |
| F4 | `domains/medical/briefs/kl-f4-four-pole.form-spec.md` | optional |
| F5+ / S* | later phases | per unit |

## Author questions (Human)

1. Band-Default nach Phase-1-Spike: F2 **lanes** vs **styled table** vs **hard-stop** (nur high-stakes)?
2. Sollen alle 73 kl-kurz **identisches** F1-Chrome tragen, oder System-Farben pro Organsystem (V-1…)?
3. Priorität Phase 2 vs. früh CES-Saddle (S1) vorziehen?

## Explicit non-goals for this brief

- No production compose of book chapters
- No Critical Claim rewrite / no invented °C, ml, time windows
- No replacing III/IV action cards with V master layout
- No solid-red emergency wall for entire monographs
- No psych chapters with anatomic shock art
- No solving §6 cases in print
