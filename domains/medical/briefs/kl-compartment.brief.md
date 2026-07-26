# Media Brief — Akutes Kompartmentsyndrom (KL Master)

- **chapter_id / slug:** V-3-kompartmentsyndrom / `kl-compartment`
- **genre:** illness-script / lerntext (kl-kurz Master)
- **content_source:** `Kursbuch5/…/welle-06-kl-full/monographs/chapter-v-3-kompartmentsyndrom.md` (read-only)
- **content_status:** format-ok · ampel GRÜN · human_review required (C)
- **content_revision:** welle-06 pilot pins via `_wave5/kl-compartment.content-map.md` (2026-07-26)
- **brief_class:** exploration
- **freeze_path:** — (exploration only; no production compose)
- **author_media:** Media (agent) + Human direction
- **date:** 2026-07-26
- **ontology:** v1.1 · content map R complete
- **catalog_version_seen:** optional awareness only — not a design ceiling

> **Exploration.** Pins = copy-through C only (via content map). No Typst. No form-meta in figures.  
> Master ≠ Slave: III-5/IV-4 Notfallprotokolle ersetzen Layout hier nicht — Master sensibilisiert.

## Design reasoning (compact)

| unit / anchor | type | learner job | load risk | presentation hypothesis | recipe fn |
|---|---|---|---|---|---|
| Big Picture | orient | understand + stop | prose wall | three-beat Was/Gefahr/Richtung (Stunden-Ischämie · Pulse-KI · Stopp) | F-frame |
| §1 Enabling | recognition | recognize | bullet soup | risks/triggers + hours–~48 h tempo + early vs late | F-profile |
| §2 Mechanism | mechanism | understand | decorative limb art | causal chain Druck→venöser Stau→Kapillarkollaps→Ischämie; anti-elevation | F-causal |
| §3 Cues | recognition | recognize | channel dump | 4 channels; Untersuchung: Dehnung + Pulse-KI loud | F-channel |
| §4 FA + NM | distinguish | distinguish | 2×2 collapse | two-col FA then NM strip (ohne Fraktur · Pulse · Maskierung) | F-hyp |
| §4 Mimic | distinguish (error) | distinguish | buried frames | frame→danger map (Muskelkater · Gips · Prellung · Pulse) | F-frame-error |
| §5 Urgency + Scope | decision | choose + constrain | T1=T2 blob; Scope as tier | T1+T2+T4 stack (**no T3**); SCOPE orthogonal | F-time/scope |
| **Spatial limb** | recognition | recognize + stop support | chartjunk anatomy | **ambition:** osteofascial limb map + criteria icons + Pulse-KI | new spatial |
| ACS≠CECS | distinguish | distinguish | CECS as free pass | contrast chip + Re-Triage always | F-delta |
| §6 Fall | apply | apply | spoiler | open Qs; post-OP transfer | F-transfer |
| DDx-Minimal | distinguish | distinguish | echo of §4 | delta-only after action | F-delta |
| Quellen | reference | look up | noise first | trailing quiet | — |

## Overall presentation goal

Learner in Direktzugang **sees ACS as hours-critical ischemia behind MSK labels**, **scans three loud signs** (disproportionaler Schmerz · passiver Dehnungsschmerz · brettharte Loge), **never clears on preserved pulses**, **separates T1 (112) from T2 (NA/Unfallchirurgie)** with correct stop payload (**not** over heart elevation; loosen bandage; no load/compression/forced stretch), and **keeps SCOPE medical** (pressure measurement, fasciotomy, final DDx).

Layout must make **spatial loge + criteria icons + Pulse-KI** co-located (illustration-semantics: hard loge + palpable pulses must still read “does not exclude ACS”).

## Section plan (free language — no bookkit requirement)

| id | content anchor | ideal presentation (prose) | priority / page intent |
|---|---|---|---|
| BP | Big Picture | three-beat: ACS definition · Worst case hours/Amputation · DA path Screening/Stopp/Weiterleitung + Pulse-KI + CECS note | high |
| EN | §1 Wann denken? | trigger/risk strip + hours tempo; early pain/stretch/loge vs late neuro/pulse | medium |
| MECH | §2 Mechanismus | pressure→ischemia chain; **Hochlagerung nicht sinnvoll** as action-adjacent chip | medium-high |
| CUES | §3 Klinische Hinweise | 4-channel table; Untersuchung loud (passive stretch example plantarflexion; Pulse können erhalten sein) | high |
| FA/NM | §4 Erhärtet / Nicht übersehen | FA two-col then NM (ohne Fraktur · Pulse · Maskierung) — sequential | high |
| MIM | §4 Trügerische Erklärungen | 4-row map: Muskelkater/DOMS · enger Gips · Prellung · erhaltene Pulse | high |
| URG | §5 Handeln | T1 112 (rasche Verschlechterung / progrediente Neuro / schwere AZ) ≠ T2 NA (klinischer Verdacht auch mit Pulsen); T4 CECS-like + Re-Triage; **no T3** | **max** |
| SCO | §5 Grenze | separate SCOPE: Druckmessung / Fasziotomie / OP / endgültige DDx = ärztlich | high |
| **SPA** | Spatial + criteria | free-vision limb compartment map + icon-meaning criteria cluster | **ambition** |
| TR | §6 Fall | post-Tibia-OP stage; open questions; no spoiler key | medium |
| DDX | DDx-Minimal | ACS vs art. Ischämie / TVT / nekrot. Fasziitis / Nervenläsion / Fraktur ohne ACS | medium-quiet |

## Wishlist outside current catalog

| wish | why | severity |
|---|---|---|
| **`kl-spatial-compartment` free vision** — limb osteofascial map + criteria icons + Pulse-KI contiguity + anti-elevation chip | decision hangs on loge localization + tactile/visual signs; peers CES/MSCC spatial genre | **required** |
| Nested/stack urgency T1≠T2 + anti-elevation in T2 payload | C separates 112 vs NA; Hochlagerung forbidden | high (code-first) |
| Mimic map 4 frames (Muskelkater/Gips/Prellung/Pulse) | strong FRAME-ERROR chapter | high |
| ACS≠CECS contrast with mandatory Re-Triage | CECS free-pass is content violation | high |
| Criteria-by-picture icons (not 6P alphabet) | C has no classic 6P list — teach C cluster only | high (inside spatial Spec) |

### Rejected paths

| id | why reject |
|----|------------|
| X1 | Solid-red III-5 Notfallkarte as Master chrome |
| X2 | Invented English 6P alphabet not in C |
| X3 | Numeric mmHg thresholds / fasciotomy technique diagram |
| X4 | Scope as green bottom traffic-light step |
| X5 | Elevation-as-first-aid visual |

## Form Spec handoff (ambitious visual units)

| unit_id | form_spec_path | ambition |
|---|---|---|
| U-urgency + U-scope | `domains/medical/briefs/kl-compartment-urgency.form-spec.md` | optional free vision; **code stack** default |
| U-spatial-compartment | `domains/medical/briefs/kl-compartment-spatial.form-spec.md` | free-vision **required** |
| U-mimic | `domains/medical/briefs/kl-compartment-mimic.form-spec.md` | optional peel; default code map |

Transfer without new Spec this wave: BP, enabling, mechanism chain, cues 4-channel, FA+NM, CECS contrast chip, transfer open Qs — pins in content map / later spike modules.

## Author questions (Human)

1. Confirm: default spatial focus = **vorderes Unterschenkelkompartiment** (+ optional Unterarm chip), not all four US compartments forced.  
2. Confirm: no 6P alphabet in any graphic (C has no list).  
3. Slave III-5 link quiet only if band carries it?

## Explicit non-goals for this brief

- No production compose / print authorization  
- No Typst / bookkit layout in Media artifacts  
- No clinical claim rewrite; no invented T3, 6P, mmHg, OP indication  
- No form-meta inside figures  
- No solid-red full-page Master chrome  
- No “Pulse da = Entwarnung”  
- No Hochlagerung über Herzhöhe as help  
- No CECS as green free-pass without Re-Triage  
- No Slave Notfallkarte replacement  

## Accept path

Exploration Accept after urgency stack spike + spatial free vision → claim audit (Pulse-KI illustration-semantics) → recreate/hybrid: accept record to write as `kl-compartment.accept.md` after G.
