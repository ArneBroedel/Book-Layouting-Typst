# Media Brief — Sepsis-Flags (KL Wave-6 transfer)

- **chapter_id / slug:** V-8-sepsis-flags / `kl-sepsis`
- **genre:** illness-script / lerntext (kl-voll Master)
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-8-sepsis-flags.md`
- **content_status:** format-ok · ampel GRÜN · human_review required (C)
- **content_revision:** welle-06 pilot pins via `_wave6/kl-sepsis.content-map.md` (2026-07-29)
- **brief_class:** exploration
- **freeze_path:** — (exploration only; no production compose)
- **author_media:** Media (agent) Wave-6 close
- **date:** 2026-07-29
- **ontology:** v1.1 · content map R complete
- **campaign:** Wave-6 closing transfers

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Big Picture | orient | understand + stop | prose wall | three-beat Infekt+Bedrohung · Unterschätzung · Triage | F-frame |
| §1 Enabling | recognition | recognize | risk soup | risks + leise geriatrische Tempo | F-profile |
| §2 Mechanism | mechanism | understand | decoration | short chain Infekt→Organdysfunktion | F-causal |
| §3 Cues | recognition | recognize | channel dump | 4 channels; Untersuchung: Vitale ohne Notrufverzögerung | F-channel |
| §4 FA + NM | distinguish | distinguish | 2×2 | FA then NM (qSOFA&lt;2 entwarnt nicht · afebril · Oligurie) | F-hyp |
| §4 Mimic | distinguish | distinguish error | buried | frame→danger map (5) | F-frame-error |
| §5 Urgency | decision | choose + stop | 6×112 ladder | nested multi-T1 + T2 + T4 · no T3 | `kl-urgency-nested-t1` |
| §5 Scope | constrain | constrain | score as tier | orthogonal SCOPE; qSOFA/NEWS2 sensibilisieren | stack |
| **Gatekeeper flags** | stop / scan | stop | qSOFA-only | **ambition:** 3 equal chips + bereits EINS → 112 | **`kl-flag-cluster`** |
| §6 Fall | apply | apply | spoiler | open Qs | F-transfer |

## Overall presentation goal

Learner **stops on Infekt + any single instability criterion**, sees **six 112 triggers as one solid T1 card**, never treats qSOFA&lt;2 as clearance, and keeps scores/SOFA in **SCOPE**.

## Section plan

| id | content anchor | ideal presentation | priority |
|---|---|---|---|
| URG | §5 | nested multi-T1 (6 clusters) + T2 + T4 + SCOPE | **max** |
| FLAG | Gatekeeper | three chips RR / AF / Vigilanz + “bereits EINS” + qSOFA secondary | **ambition** |
| MIM | §4 mimic | 5-row frame→danger | high |
| BP… | rest | transfer code optional later | medium |

## Wishlist

| wish | why | severity |
|---|---|---|
| `kl-flag-cluster` code | type-D flag-master missing from library | **required** |
| nested multi-T1 6 clusters | C has six 112 rows | high |

### Rejected

X1 score exclusion algorithms · X2 solid-red Master wall · X3 invented mortality % · X4 anatomy free vision

## Form Spec handoff

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `kl-sepsis-urgency.form-spec.md` | skip free vision (code) |
| U-mimic | `kl-sepsis-mimic.form-spec.md` | skip free vision |
| U-flag-cluster | `kl-sepsis-flag-cluster.form-spec.md` | **code required** (not free vision) |

## Author questions

1. None for exploration — pins sufficient from C.

## Explicit non-goals

- No production compose · no claim rewrite · no form-meta in figures · no SOFA/NEWS2 as HP diagnosis · no free anatomy
