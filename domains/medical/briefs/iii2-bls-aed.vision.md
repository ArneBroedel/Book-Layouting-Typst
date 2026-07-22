# Graphic Vision Brief (Phase A — free) — GOLD example III-2 S4

- **chapter_id / slug:** III-2 / `bls-aed-notfallprozeduren`
- **unit_id:** S4 Primär-Algorithmus
- **brief_path:** `domains/medical/briefs/iii2-bls-aed.brief.md`
- **content_source:** Kursbuch staging pilot / `pilots/kursbuch-welle-03/chapters/iii2.typ` (labels)
- **genre:** notfall-karte
- **author_role:** graphics
- **date:** 2026-07-22
- **generator:** nanobanana-free (agy)
- **structure_reference:** **none**

## Learner / didactic intent (from Media)

- **unit type:** decision / procedure
- **learner job:** choose and execute under stress (consciousness/collapse)
- **load risk:** branch flattened; monitoring path feels “done”; CPR details leak into Seitenlage path
- **presentation hypothesis:** branching protocol with visible dual fates + ongoing surveillance
- **why graphic:** under stress, flow must *look like* a flow — not a flat table

## Content to show (claim-safe)

| step / zone | allowed text (German) |
|---|---|
| 1 | Szene sichern; Handschuhe wenn verfügbar |
| 2 | Ansprechen + Schmerzreiz; Atemwege freimachen |
| 3 | Atmung normal? max. 10 s |
| 4a | Seitenlage · 112 · überwachen; weiter überwachen wenn stabil; Verschlechterung → CPR-Pfad |
| 4b | 112 · CPR · AED holen lassen |
| 5 | CPR 30:2 (Kurs) bzw. nur Kompressionen; AED-Anweisungen folgen |
| 6 | Bis Übergabe RD · minimale Pausen |

## Explicit non-goals

- No ALS / Medikamente / invented vitals
- No English decorative titles
- No copying repo SVG dual-lane as layout template

## Output paths

| candidate | path | notes |
|---|---|---|
| vision-free-01 | `domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana-free.png` | **Preferred vision** (user) |
| structure-ref (anti-pattern for free test) | `…/primar-algorithmus-raster-nanobanana.png` | SVG-near remake — not free mode |

## Self-check

- [x] No structure file as free template for free candidate
- [x] Ready for Phase B: prefer **recreate** (hybrid/code) or **accept-asset** if recreate loses quality; optional **refine** for loop-to-3 semantics
- [x] **Phase B1 done (2026-07-22):** Typst recreate `toolset/compose/spikes/graphics/iii2-bls-aed/lib/primar-algorithmus.typ` · spikes `recreate-p1.png` / `compare-p1.png` · embedded in `pilots/kursbuch-welle-03/chapters/iii2.typ`
- [x] **Phase B2 done (2026-07-22):** refined raster `primar-algorithmus-raster-nanobanana-refined.png` via `scripts/graphics-refine-agy.sh` (4a-only loop, minimale Pausen, book palette)
