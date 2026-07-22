# Form Spec (Media — Stage M) — III-5 S4 Sofortmaßnahmen

- **chapter_id / slug:** III-5 / `cauda-notfallkarte`
- **unit_id:** S4 Sofortmaßnahmen vor Ort
- **brief_path:** `domains/medical/briefs/iii5-cauda-notfallkarte.brief.md`
- **content_source:** Kursbuch staging pilot + `pilots/kursbuch-welle-03/chapters/iii5.typ`
- **genre:** notfall-karte
- **recipe_fn:** F4
- **author_role:** media (gold example #2)
- **date:** 2026-07-23
- **ambition:** free-vision **required**

## Learner context

- **Actor:** PT/MSK Erstkontakt bei CES-Verdacht  
- **Scan budget:** stress protocol (seconds)  
- **Setting:** vor Ort, vor Transport  

## Learner job

**execute** ordered on-site measures: stop → protect → alarm → limited exam; no delay for invasive PT tests.

## Load risks

- Flat bullets bury hard stops  
- BLS becomes main path  
- “Morgen früh”-Termin still offered  

## Zones

| zone | loudness | role |
|---|---|---|
| 1 Abbrechen | **loud danger** | therapy stop + technique bans |
| 2 Lagern | medium | no walk if weakness/bladder |
| 3 Alarm | loud | 112 + handover keywords |
| 4 Prüfung | medium | non-invasive only if no delay |
| Escape | side/quiet | Kollaps → BLS → III-2 |
| Verbote | **loud danger** | no self-med, no massage-away, no “tomorrow” |

## Must-see

1. Hard stop step 1  
2. Verbote banner  
3. BLS as **short escape only**  
4. Numbered order 1–4  
5. Handover content on alarm step  

## Claim pins

| step | allowed text |
|---|---|
| 1 | Therapie *sofort abbrechen* — *keine* HVT/Manipulation, *keine* Traktion, *keine* mobilisierende LWS-Technik |
| 2 | Patient *nicht* aufstehen/gehen lassen bei Schwäche oder Blasennot; ruhig lagern, überwachen |
| 3 | *112* bzw. ED-Transport; Übergabe: Sattel/Blase/Darm/Beinkraft, Zeitverlauf, Antikoagulation/OP/Trauma |
| 4 | Orientierende *nicht-invasive* Prüfung nur soweit Transport *nicht* verzögert — *keine* invasive Restharnmessung / Sphinkterprüfung als PT-Pflicht |
| Escape | Kollaps/Bewusstseinsstörung: BLS → III-2 |
| Verbote | *Keine* Eigen-Medikation, *kein* „Schmerz wegmassieren“, *kein* Termin „morgen früh …“ bei Sattel-/Sphinkter-Flag |

## Genre chrome

- **Must:** hard-stop notfall protocol  
- **Must not:** full illness script; English STOP/PROTECTION stage titles as production text  

## Hypothesis

**hard-stop-protocol**

## Success criterion

Learner **stops intervention immediately** and **alarms 112** without delaying transport for PT-only tests.

## Handoff

Realized: free (EN chrome drift) + recreate `#sofortmassnahmen-ces()` → Accept **code**.  
Module: `toolset/compose/spikes/graphics/iii5-cauda-notfallkarte/lib/sofortmassnahmen.typ`
