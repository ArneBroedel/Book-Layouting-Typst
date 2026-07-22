# Graphic Vision Brief (Phase A — free) — IV-2 S4 Entscheidungs-Flow

- **chapter_id / slug:** IV-2 / `rueckenschmerz-neuro`
- **unit_id:** S4 Entscheidungs-Flow
- **brief_path:** `domains/medical/briefs/iv2-rueckenschmerz-neuro.brief.md`
- **content_source:** Kursbuch staging pilot + `pilots/kursbuch-welle-03/chapters/iv2.typ`
- **genre:** leitsymptom (decision path)
- **author_role:** graphics
- **date:** 2026-07-22
- **generator:** nanobanana-free (agy)
- **structure_reference:** **none**

## Learner / didactic intent (from Media)

- **unit type:** procedure / decision
- **learner job:** execute ordered triage under time pressure (Erstkontakt MSK/PT)
- **load risk:** unordered bullets flatten order; Default-to-Danger invisible; RF path equals “still treat”
- **presentation hypothesis:** numbered protocol sequence with step weight — First-Look → RF → R+I+S → C
- **why graphic:** must *look like* an ordered decision path (not a flat list), after CES gatekeeper already set stop culture

## Content to show (claim-safe — from pilot compose)

| step | allowed text (German) |
|---|---|
| 1 First-Look / vital? | Schock, Kollaps, reißender Schmerz (AAA-Muster), schwere bilaterale Parese mit Gehunfähigkeit → *112*, Patient *nicht* gehen lassen. CES-Detail: → III-5 · BLS: → III-2 · Illness Script: → V-Cauda |
| 2 Red-Flag-Box positiv? | Aktion 1:1 (*112* vs. *ED/Arzt gleichtags*). *Keine* HVT, Traktion, forcierte Mobilisation „zur Abklärung“ |
| 3 R / I / S Check | R-Check (Matrix R4→R1) → I-Check (PT-Nutzen jetzt?) → S-Check (LWS-Maßnahme jetzt sicher?) |
| 4 Ergebnis C | siehe R+I+S→C. Unklar + red-flag-nah (vage perineale Taubheit, unklare Blase) → *Default-to-Danger* (lieber 112/ED als „noch testen“) |

## Explicit non-goals

- No inventing Restharn-ml / score cut-offs
- No full CES illness script (Master V-Cauda / III-5)
- No English decorative chrome
- **No** attaching repo SVG/PNG flowcharts as layout templates

## Creative freedom

Any composition that makes **order + Default-to-Danger** unmistakable under scan stress: vertical protocol, stepped cards, urgency weights, dual “stop vs continue” outcomes, etc.

## Output paths

| candidate | path |
|---|---|
| vision-free-01 | `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-free-01.png` |
| vision-refined-01 | `domains/medical/assets/iv2-rueckenschmerz-neuro/vision-refined-01.png` |
| preview free | `dist/spikes/graphics/iv2-rueckenschmerz-neuro/vision-free-01.png` |
| preview refined | `dist/spikes/graphics/iv2-rueckenschmerz-neuro/vision-refined-01.png` |

## Self-check

- [x] Free gen done 2026-07-22 (agy Nano Banana, structure_ref=none)
- [x] Vertical protocol 1–4 + Default-to-Danger loud
- [x] Phase B1 recreate: `toolset/compose/spikes/graphics/iv2-rueckenschmerz-neuro/lib/entscheidungs-flow.typ`
- [x] Optional B2 refine of free PNG → `vision-refined-01.png`
