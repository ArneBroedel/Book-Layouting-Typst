# Form Spec — CRPS regional cue board

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-regional-cues`
- **unit_id:** U-cues
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **content_source:** `…/chapter-v-3-crps-sudeck.md` §3 *Klinische Hinweise* (+ Big-Picture distal/regional)
- **genre:** illness-script (kl-kurz)
- **recipe_fn:** cue-matrix / regional gestalt board
- **author_role:** media
- **date:** 2026-07-30
- **ambition:** free-vision **required**
- **brief_class:** exploration

## Learner context

- **Actor:** HP Physio / PT Direktzugang  
- **Time pressure / scan budget:** 15–30 s recognition pass  
- **Setting:** posttrauma extremity exam  

## Learner job (one primary)

**recognize** · secondary **document** (Seitenvergleich)

**Primary job in one sentence:** See the **regional distal** pattern of disproportionate pain plus sensory / motor / vasomotor / trophic cues without diagnosing Budapest.

## Load risks (if form is wrong)

- Four-domain table becomes wall of text  
- Missing **disproportional** + **distal/regional** gestalt  
- Looks like definitive diagnosis checklist for HP  
- Deep anatomy / bone art (avoid; H-Gfx territory)  
- Free vision invents signs not in C  

## Cognitive / layout levers

- **Segmenting:** four domain tiles (Anamnese / Beobachtung / Untersuchung / Verlauf)  
- **Signaling:** “disproportional” + “Seitenvergleich” loud anchors  
- **Dual coding:** schematic limb silhouette *optional* only as **region marker** (distal field), not anatomical teaching plate  
- **Figure–ground:** emergency escalation line (Fieber, Spannungszunahme, Pulslosigkeit) as escape rail  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Gestalt header | loud | disproportional + regional distal after trauma/OP | recognition title |
| Tile Anamnese | medium | history cues | scannable |
| Tile Beobachtung | medium | visible asymmetry / trophik | scannable |
| Tile Untersuchung | loud | Allodynie, Pulse, Seitenvergleich | action of exam |
| Tile Verlauf | medium | days–weeks; persistence | time course |
| Escape rail | max-side | when to re-triage emergency | hard stop cues from Verlauf row |
| Quiet | quiet | no Budapest criteria dump | — |

## Must-see elements

Domain content (copy-through structure from C table):

1. **Anamnese:** Trauma/OP der Extremität; brennender, stechender oder dumpfer Schmerz **deutlich stärker als zur Verletzung passend**; Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit  
2. **Beobachtung:** Asymmetrische Schwellung; Hautfarbe blass, rötlich oder livide; sichtbare trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung  
3. **Untersuchung:** Seitenvergleich (Temperatur, Farbe, Schwitzen); Allodynie bei leichter Berührung; Hyperalgesie; Kraft und Sensibilität; periphere Pulse; Wundstatus und systemische Infektzeichen  
4. **Verlauf:** Tage bis Wochen post Trauma; Persistenz oder Zunahme statt erwarteter Heilung; bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit **sofortige** Notfall-Re-Triage veranlassen  
5. **Gestalt pin** from Big Picture: typischerweise **distal** der Läsion; regionales Muster  

## Icon meaning (free-vision criteria)

| pin / zone | drawing must show | must not show |
|---|---|---|
| Disproportional pain | pain intensity out of scale with “injury size” metaphor | numeric pain scores invented |
| Regional distal field | distal limb region marked, not single dermatome only | full anatomy atlas; bone cross-section |
| Seitenvergleich | left/right asymmetry cue | labeled muscle origins/insertions |
| Allodynie | light-touch sensitivity concept | gore; open wounds as default |
| Escape (Fieber/Pulse/Spannung) | triage escalation symbols | soft decorative icons without meaning |

## Urgency / weight encoding

- Escape rail may use danger accent  
- Main board = framework teal / info — **not** solid emergency wall (urgency unit owns T1 stack)  

## Genre chrome

- kl-kurz recognition board  
- **Must look like:** clinical cue dashboard / matrix with gestalt  
- **Must not look like:** Budapest diagnostic scorecard for HP final diagnosis  

## Claim pins (German, copy-through from C)

| zone | allowed text |
|---|---|
| Anamnese | Trauma/OP der Extremität; brennender, stechender oder dumpfer Schmerz **deutlich stärker als zur Verletzung passend**; Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit |
| Beobachtung | Asymmetrische Schwellung; Hautfarbe blass, rötlich oder livide; sichtbare trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung |
| Untersuchung | Seitenvergleich (Temperatur, Farbe, Schwitzen); Allodynie bei leichter Berührung; Hyperalgesie; Kraft und Sensibilität; periphere Pulse; Wundstatus und systemische Infektzeichen |
| Verlauf | Tage bis Wochen post Trauma; Persistenz oder Zunahme statt erwarteter Heilung; bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit **sofortige** Notfall-Re-Triage veranlassen |
| Gestalt | regional; typischerweise distal der Läsion (from Big Picture sense; keep wording tight to C) |

## Explicit non-goals / must-not

- No Budapest criteria as HP checklist  
- No invented clinical signs  
- No deep anatomy free vision (H-Gfx)  

## Presentation hypothesis

four-tile cue matrix + distal-regional gestalt header + emergency re-triage escape rail

## Success criterion

Under scan stress learner can list **disproportional pain + Seitenvergleich vegetative/trophic cues + distal/regional** and knows Fieber/Spannung/Pulslosigkeit triggers **sofortige Notfall-Re-Triage**.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition: free-vision **required**  
- [x] Claim pins from C §3  
- Visual-Unit → `medical-graphics` playbook; claim audit labels + icons  
