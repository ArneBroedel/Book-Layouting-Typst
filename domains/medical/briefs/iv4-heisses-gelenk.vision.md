# Graphic Vision Brief (Phase A — free) — IV-4 S6 Entscheidungs-Flow

- **chapter_id / slug:** IV-4 / `heisses-gelenk`
- **unit_id:** S6 Entscheidungs-Flow
- **brief_path:** `domains/medical/briefs/iv4-heisses-gelenk.brief.md`
- **content_source:** Kursbuch staging pilot + `pilots/kursbuch-welle-03/chapters/iv4.typ`
- **genre:** leitsymptom (hot swollen joint)
- **author_role:** graphics
- **date:** 2026-07-22
- **generator:** nanobanana-free (agy)
- **structure_reference:** **none**

## Learner / didactic intent (from Media)

- **unit type:** procedure / decision
- **learner job:** ordered triage with **exact 112 vs ED split** (no mixed answer); no probe treatment
- **load risk:** 112/ED mashed; Gicht/OA softens path; unordered list
- **presentation hypothesis:** numbered protocol 1–4 with **split thresholds** visible on steps 1–2
- **why graphic:** split must be *seen*; Default-to-Danger + no 2–3-day trial

## Content to show (claim-safe — from pilot)

| step | allowed text (German) |
|---|---|
| 1 First-Look / vital? | Bewusstseinsstörung, schwerer AZ-Abfall, Sepsis-Kreislauf → *112*. Kind: Fieber + Gehverweigerung *und* Sepsis-Bild → *112* / päd. Notfall; Fieber + Schonhaltung *ohne* Sepsis-Bild → *pädiatrische ED noch heute*. *Keine* Manipulation, *keine* Belastung. BLS: → III-2 |
| 2 RF positiv? | Aktion *1:1 splitten* (*112* vs. *ED noch heute* vs. *binnen Stunden* — keine Mischantwort). *Keine* Probebehandlung „ob es in 2–3 Tagen besser wird“. |
| 3 R/I/S | R-Check (Matrix R4→R1) → I-Check (PT-Nutzen jetzt am Gelenk?) → S-Check (Maßnahme sicher? Manipulation? Traktion? Dry Needling? Belastung?) |
| 4 Ergebnis C | siehe R+I+S→C. Unklar + red-flag-nah → *Default-to-Danger* (lieber ED/112 als „noch testen“) |
| Gatekeeper echo (optional) | Heißes Mono-Gelenk + Fieber *≥ 38,5 °C* + deutliche AZ-Verschlechterung → *112*; Non-weight-bearing ohne Sepsis → *ED noch heute* (exact split — do not invent other numbers) |

## Explicit non-goals

- No inventing CRP/Kocher cut-offs
- No softening bacterial path with Gicht/OA labels
- No English chrome
- **No** structure template attach

## Creative freedom

Any composition that makes **order + split urgency** unmistakable. May differ visually from IV-2 back-pain flow (joint/Sepsis cues).

## Output paths

| candidate | path |
|---|---|
| vision-free-01 | `domains/medical/assets/iv4-heisses-gelenk/vision-free-01.png` |
| preview | `dist/spikes/graphics/iv4-heisses-gelenk/vision-free-01.png` |

## Self-check

- [x] Free gen done (structure_ref=none) — `vision-free-01.png` 896×1200 RGB, 2026-07-22 (had claim drift on step 1)
- [x] 112 vs ED not mashed — dual-path + RF chips + Default-to-Danger
- [x] Phase B1 recreate: `lib/entscheidungs-flow.typ`
- [x] Phase B2 refine: `vision-refined-01.png` — invented vitals stripped; claim-safe German
