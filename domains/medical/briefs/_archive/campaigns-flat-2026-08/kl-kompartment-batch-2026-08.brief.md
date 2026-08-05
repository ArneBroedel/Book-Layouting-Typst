# Media Brief — Akutes Kompartmentsyndrom (kl-kurz) · d-risc-batch

- **chapter_id / slug:** V-3-kompartmentsyndrom / `kl-kompartment-batch-2026-08`
- **genre:** illness-script / lerntext (kl-kurz Master)
- **content_source:** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-08-d-risc-batch/monographs/chapter-v-3-kompartmentsyndrom.md` (read-only C)
- **notes:** `…/notes/v-3-kompartmentsyndrom.notes.md`
- **content_status:** draft-s2 · writer_go 2026-08-01-d-risc-batch · human_review required (C)
- **brief_class:** exploration
- **freeze_path:** — (exploration only)
- **author_media:** Media (book-production-orchestrator L2 · d-risc-batch-2026-08)
- **date:** 2026-08-01
- **ontology:** v1.1
- **board:** `toolset/orchestration/book-production/d-risc-batch-2026-08/`

> **Exploration batch pilot.** Pins = C + Notes Critical Claims only.  
> Grammar transfer from `kl-kompartment-2026-08-01` / wave-5 compartment OK; **re-pin to batch content**.  
> **No anatomy free vision.** Ambition = **code clinical criteria** (quiet 2×2) + urgency stack from C §5.  
> Prior `*-2026-08-01` pilots are **reference only**, not done.

## Critical claims (must pin)

| # | Claim | Action |
|---|---|---|
| 1 | Schmerz out of proportion (posttrauma/post-OP) | Sofort ED / bei Verschlechterung **112** |
| 2 | Passiver Dehnungsschmerz | Sofort ED; manuelle Techniken **stoppen** |
| 3 | Bretthartes Kompartiment | Sofort ED; **keine** Kompression; **nicht** >Herzhöhe lagern |
| 4 | Neuro-Defizit bei Verdacht | **112**/ED |
| 5 | **Tastbare Pulse schließen ACS nicht aus** | gleiche Dringlichkeit |
| 6 | Zunehmender Schmerz unter Gips/Verband | ED, nicht abwarten |
| 7 | HP/PT misst keinen Druck; Fasziotomie außerhalb Scope | Zuständigkeitsgrenze |
| 8 | Keine Hochlagerung >Herzhöhe als „Therapie“ | Perfusion schonen; ED |

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Danger + BP | orient + stop | understand + stop | dual danger buried | three-beat: ACS def · hours ischemia · DA Screen/Stop/Refer + Pulse-KI | F-frame |
| §1 Enabling | recognition | recognize | bullet soup | risk strip + hours–48h; early triad vs late neuro | F-profile |
| §2 Mechanism | mechanism | understand | limb art | pressure→ischemia; **Hochlagerung nicht sinnvoll** chip | F-causal |
| §3 Cues | recognition | recognize | channel dump | 4-channel quiet cards | F-channel |
| **Criteria cluster** | recognition | recognize + stop | multi-orange walls | **ambition code quiet 2×2** + Pulse-KI high weight + anti-elevation | F-criteria |
| §4 FA + NM | distinguish | distinguish | 2×2 | sequential FA then NM | F-hyp |
| §4 Mimic | distinguish | distinguish | buried | 4-row frame→danger (DOMS · Gips · Prellung · Pulse) | F-frame-error |
| §5 Urgency + Scope | decision | choose + constrain | T1=T2; invent T3 | **T1+T2+T4** stack (no T3) + SCOPE from C §5 | F-time/scope |
| §6 Fall | apply | apply | spoiler | open Qs post-Tibia-Gips (batch vignette) | F-transfer |
| DDx | distinguish | distinguish | echo | delta table | F-delta |

## Overall presentation goal

Learner **sees ACS as hours-critical ischemia behind MSK labels**, **scans triad + pulse-not-exclude as high-weight safety**, **separates T1 112 from T2 NA/Unfallchirurgie**, **executes stop payload including no elevation above heart**, and **keeps SCOPE medical**.

## Section plan

| id | content anchor | ideal presentation | priority / page |
|---|---|---|---|
| BP | Big Picture + danger | three-beat + Pulse-KI + CECS note | high · ~⅛–¼ p |
| EN | §1 | risks + tempo strip | medium · ≤⅛ p |
| MECH | §2 | short chain + anti-elevation | medium · ≤⅛ p |
| CUES | §3 | 4-channel quiet cards | high · ~¼ p |
| **CRIT** | Criteria cluster | quiet 2×2 code panel (not multi-orange walls) | **ambition** · ~¼–⅓ p |
| FA/NM | §4 | sequential | high · ~¼ p |
| MIM | §4 Trügerische | 4-row map | high · ~¼ p |
| URG | §5 | T1≠T2≠T4 + SCOPE | **max** · ~⅓–½ p |
| TR | §6 | open Qs (batch case) | medium |
| DDX | DDx | quiet delta | medium-quiet |

## Wishlist

| wish | why | severity |
|---|---|---|
| Full T1/T2/T4 stack with anti-elevation in T2 | C §5 safety bulk | high (code) |
| Mimic 4 frames incl. pulses | classic traps | high (code) |
| **Quiet criteria 2×2** + Pulse-KI danger weight | recognition without multi-orange walls | **required** (code; free vision **skip**) |

### Rejected

| id | why |
|----|-----|
| X1 | Anatomy free limb cut / osteofascial free vision |
| X2 | Invented 6P / mmHg cutoffs as HP action |
| X3 | Solid-red Master wall; multi-orange stacked criteria walls |
| X4 | SCOPE as T5; invented T3 |
| X5 | Elevation-as-help visual |
| X6 | DE epi incidence numbers (Verify-Konflikt) |

## Form Spec handoff

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `kl-kompartment-batch-2026-08-urgency.form-spec.md` | code stack from C §5 |
| U-criteria | `kl-kompartment-batch-2026-08-criteria.form-spec.md` | **code quiet 2×2**; free vision **skip** |
| U-mimic | grammar transfer wave-5 `mimic-compartment` | code map (no new free) |
| others | brief only | skip free vision |

Design Contracts: `kl-kompartment-batch-2026-08-*.design-contract.md`  
Design Critique: `kl-kompartment-batch-2026-08.design-critique.md`

## Explicit non-goals

- No production compose / freeze claim  
- No Typst in Media artifacts  
- No anatomy free gen  
- No Accept without Design+Visual CLEAN  
