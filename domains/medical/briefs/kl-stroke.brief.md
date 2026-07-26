# Media Brief — Schlaganfall / TIA (KL Master)

- **chapter_id / slug:** V-4-schlaganfall / `kl-stroke`
- **genre:** illness-script / lerntext (kl-voll Master)
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-4-schlaganfall.md` (read-only)
- **content_status:** format-ok · audit_ampel GRÜN · human_review required (C)
- **content_revision:** welle-06 pilot pins via `_wave5/kl-stroke.content-map.md` (2026-07-26)
- **brief_class:** exploration
- **freeze_path:** — (exploration only; no production compose)
- **author_media:** Media (agent) + Human direction
- **date:** 2026-07-26
- **ontology:** v1.1 · content map R complete
- **catalog_version_seen:** optional awareness only — not a design ceiling

> **Exploration.** Pins = copy-through C only (via content map). No Typst. No form-meta in figures.  
> Master ≠ Slave: III/IV Notfallkarten ersetzen Layout hier nicht.

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Big Picture | orient | understand + gate | prose wall | three-beat Was/Gefahr/Richtung | F-frame |
| §1 Enabling | recognition | recognize | bullet soup | triptych RF / Begleit / apoplektiform + Last seen normal | F-profile |
| §2 Mechanism | mechanism | understand | decoration | causal chain + anterior/posterior territory fork | F-causal |
| §3 Cues | recognition | recognize | table dump | 4 channels; Untersuchung = FAST loud | F-channel |
| §4 FA + NM | distinguish | distinguish | essay / 2×2 collapse | two-col FA then NM strip (sequential) | F-hyp |
| §4 Mimic | distinguish (error) | distinguish | buried frames | frame→danger map (4 rows) | F-frame-error |
| §5 Urgency + Scope | decision | choose + constrain | 4× equal T1 walls; Scope as T5 | **nested multi-T1 stack** + orthogonal SCOPE | F-time/scope |
| **FAST look** | recognition | recognize → act | letter poster without Time→112 | **ambition:** criteria-by-picture F–A–S + Time action | new look |
| BE-FAST / posterior | recognition | stop-awareness | equal-weight score chrome | secondary wing + guardrail pins | extension |
| §6 / Case | apply | apply | spoiler key | open Qs; clinical anchor stage | F-transfer |
| DDx / Qualifiers | distinguish / handoff | distinguish | echo of §4 | delta-only table; SBAR quiet | F-delta |
| Quellen | reference | look up | noise before action | trailing quiet | — |

## Overall presentation goal

Learner in Direktzugang (PT/HP) **scans a multi-T1 emergency instrument**, **runs FAST as a decision form** (not a glossary), **rejects four false frames** (Bell / HWS / Migräne-Aura / Schulter-Arm), and **never delays 112** for further tests, HWS-Mobilisation, or “already remitted” TIA talk — while reading SCOPE as a non-tier constraint (no ischemia/bleeding own-out, no ABCD² home-send).

Layout must make **Time = Handlungszeit / Notruf** louder than decorative letter art, and keep **BE-FAST secondary** (sensibilisiert Posterior; ersetzt FAST-112-Logik nicht).

## Section plan (free language — no bookkit requirement)

| id | content anchor | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| BP | Big Picture | three-beat strip: Was (Schlaganfall/TIA) · Gefahr (MSK-Fehlzuordnung / Fensterverlust) · Richtung (112 / Stroke-Unit) | high / opener |
| EN | §1 Wann denken? | triptych: Risiken · Begleit · onset **apoplektiform** + „Last seen normal“; named tempo poles (Sekunden–Minuten) | medium |
| MECH | §2 Entstehung | short causal chain Ischämie/Blutung → Perfusion → Penumbra → Ausfall; fork anterior (FAST greift) vs posterior (FAST oft negativ) | medium |
| CUES | §3 Klinische Hinweise | 4 equal channels; Untersuchung hosts FAST-Screen (Sicherheit, nicht Ausschluss) | high |
| FA/NM | §4 Erhärtet / Nicht übersehen | FA two-col then NM strip (posterior, Hypoglykämie, zentrale Fazialis, Blutung, Todd) — **no 2×2 collapse** | high |
| MIM | §4 Trügerische Erklärungen | 4-row frame→danger map (Bell · HWS · Migräne-Aura · Schulter-Arm) | high |
| URG | §5 Handeln | **one** T1 card with internal multi-trigger cluster (FAST / fokal Sens/Sehen / Schwindel+fokal / TIA remittiert); T2 only ohne Akut-Dynamik; T3 collapse; T4 + Netz; Default-to-Danger | **max** |
| SCO | §5 Grenze Zuständigkeit | separate SCOPE frame (geometry ≠ tier); tool boundaries FAST/BE-FAST/ABCD²; absolute KIs | high |
| FAST | FAST / BE-FAST | **free-vision criteria-by-picture**; F/A/S clinical drawings + T as Time/Notruf; BE-FAST secondary wing + posterior gap | **ambition** |
| TR | §6 + Case Study | open questions; Case as clinical anchor without spoiler key | medium |
| DDX | DDx-Tabelle | Treat-vs-Refer delta only (not §4 echo) | medium-quiet |
| SUM | Das Wichtigste | 5-bullet gatekeeper strip | medium |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| **`kl-fast-look` free vision** — letter cascade or body-map pins with DE criteria + Time action cap | C makes FAST the decision anchor; sibling of ABCDE but **112-primär** and T ≠ body sign | **required** |
| BE-FAST secondary wing + posterior-gap callout | C: FAST unempfindlich Posterior/Hirnstamm; BE-FAST sensibilisiert, ersetzt 112-Logik nicht | high (after FAST core) |
| Nested multi-T1 urgency dashboard polish | 4× 112-Zeilen in §5 must scan as **one** stop instrument | high (code-first grammar) |
| Optional mimic peel (HWS-Maske → zentrale Gefahr) | Case narrative strong; map rows may suffice | optional |
| Anterior/posterior territory fork in mechanism | steers FAST sensitivity understanding | low (code chain) |

### Ambition shortlist (from content map)

**Keep:** P1 letter cascade F–A–S + Time action · P2 body-map pins + side 112 · P3 ≥1-positive gate strip.  
**Reject:** R1 glossary without action · R2 solid-red full-page Master chrome · R3 ABCD² home-send tool · R4 BE-FAST equal-weight “new standard”.

## Form Spec handoff (ambitious visual units)

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `domains/medical/briefs/kl-stroke-urgency.form-spec.md` | optional free vision; **code nested multi-T1** default |
| U-cues / FAST look | `domains/medical/briefs/kl-stroke-fast.form-spec.md` | free-vision **required** |
| U-mimic | `domains/medical/briefs/kl-stroke-mimic.form-spec.md` | optional peel; default code map |

Transfer without new Spec this wave: BP three-beat, enabling triptych, mechanism chain, cues 4-channel shell, FA+NM, transfer open Qs — pins in content map / later spike modules.

## Author questions (Human)

1. Confirm: BE-FAST remains **secondary** in print (no equal spine to FAST) as C states.  
2. Confirm: TIA remittiert stays inside **T1** cluster (not soft T2) for exploration Accept.  
3. Optional: Case Study spatial/peel ambition deferred until after FAST Accept?

## Explicit non-goals for this brief

- No production compose / print authorization  
- No Typst / bookkit layout in Media artifacts  
- No clinical claim rewrite or invented T3  
- No form-meta inside figures („Trigger cluster“, ontology IDs, „keine Dringlichkeitsstufe“)  
- No solid-red full-page Master chrome (III-genre)  
- No ABCD² as PT Heimschicken-Algorithmus  
- No BE-FAST as DE-Leitlinien-Primärscore for HP/Physio  
- No English-only Face/Arms/Speech without DE criteria  
- No recycling Melanom ABCDE asset with relabeled letters  
- No Slave III/IV layout replacement  

## Accept path

Exploration Accept after nested-T1 spike + FAST free vision → claim audit (illustration-semantics) → recreate/hybrid: accept record to write as `kl-stroke.accept.md` after G.
