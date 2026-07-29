# Form Spec — CRPS mimic peel

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-mimic`
- **unit_id:** U-mimic
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **content_source:** `…/chapter-v-3-crps-sudeck.md` §4 *Trügerische Erklärungen* (+ *Nicht übersehen*)
- **genre:** illness-script (kl-kurz)
- **recipe_fn:** `kl-mimic-map` / peel frame→danger
- **author_role:** media
- **date:** 2026-07-30
- **ambition:** free-vision **required**
- **brief_class:** exploration

## Learner context

- **Actor:** HP Physio / PT Direktzugang  
- **Time pressure / scan budget:** 10–20 s to reject false frames  
- **Setting:** posttrauma / post-OP Nachsorge conversation  

## Learner job (one primary)

**distinguish** (error frames) · secondary **stop** when frame hides emergency  

**Primary job in one sentence:** Refuse four common false explanations that either clear emergencies or bagatellize CRPS.

## Load risks (if form is wrong)

- Frames look like friendly tips, not **dangerous misreads**  
- “Psychosomatik” row softens organic path  
- “Entzündliches CRPS” row fails to put Infekt **before** CRPS label  
- Visual beauty without claim pins → claim audit fail  
- Anatomy photo of limb pathology (avoid; not required)

## Cognitive / layout levers

- **Segmenting:** one row per trap frame  
- **Signaling:** frame (left) quieter; danger/correction (right) louder  
- **Contiguity:** each frame adjacent to its rebuttal  
- **Dual coding:** optional icon per frame (not replacing text pins)  
- **Peel / mask:** free vision may show “mask lifts → real job”

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title strip | medium | “Trügerische Erklärungen” / Fehllabelung | warning of self-deception |
| Row 1–4 frame | medium-quiet | the false label | familiar excuse |
| Row 1–4 danger | loud | why it fails | hard correction |
| Optional NM chips | loud-side | Infekt / Kompartment / Ischämie / TVT | must-not-miss not buried |
| Quiet | quiet | no sources here | — |

## Must-see elements

Four rows (frame → danger):

| frame | danger |
|---|---|
| „Normaler Heilungsschmerz“ | entwarnt bei klarer Disproportionalität und vegetativen Zeichen **nicht** |
| „Psychosomatik / Überempfindlichkeit“ | psychische Anteile schließen organische Notfall-DDx und CRPS **nicht** aus |
| „Nur Nervenläsion / isolierte Neuropathie“ | eine isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild – und umgekehrt |
| „Entzündliches CRPS“ bei Fieber/Eiter | systemische oder lokale Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben Vorrang vor dem CRPS-Label |

Optional but preferred on same unit or adjacent strip — **Nicht übersehen** chips:

- Fieber und eitrige Wunde (Infekt/Osteomyelitis)  
- Extreme Schwellung und Spannungsblase frisch posttrauma (Kompartmentsyndrom)  
- Akute Blässe, Kälte und Pulslosigkeit (arterielle Ischämie)  
- Einseitige Beinschwellung mit Risikofaktoren (TVT)  

## Icon meaning (free-vision criteria)

| pin / zone | drawing must show | must not show |
|---|---|---|
| Heilungsschmerz frame | “expected healing” mask over disproportionate pain cues | smiling “all fine” without tension |
| Psyche frame | mental label covering limb red flags | stigma cartoon; no claim that psyche is false forever |
| Nerv frame | single-nerve territory vs whole regional distal field | detailed plexus anatomy |
| Fieber/Eiter frame | infection signs **before** CRPS badge | CRPS badge winning over fever/pus |
| Peel motion (optional) | mask lifts to triage job | gore; deep anatomy |

## Urgency / weight encoding

- Danger/correction column uses warning weight  
- Must-not-miss chips may use danger accent  
- Not a full red emergency wall (urgency unit owns T1)  

## Genre chrome

- kl-kurz / illness-script  
- **Must look like:** error-correction map / peel  
- **Must not look like:** decorative poster without readable German pins  

## Claim pins (German, copy-through from C)

| zone | allowed text |
|---|---|
| Frame 1 | „Normaler Heilungsschmerz“ |
| Danger 1 | entwarnt bei klarer Disproportionalität und vegetativen Zeichen **nicht**. |
| Frame 2 | „Psychosomatik / Überempfindlichkeit“ |
| Danger 2 | psychische Anteile schließen organische Notfall-DDx und CRPS **nicht** aus. |
| Frame 3 | „Nur Nervenläsion / isolierte Neuropathie“ |
| Danger 3 | eine isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild – und umgekehrt. |
| Frame 4 | „Entzündliches CRPS“ bei Fieber/Eiter |
| Danger 4 | systemische oder lokale Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben Vorrang vor dem CRPS-Label. |
| NM (optional) | Fieber und eitrige Wunde (Infekt/Osteomyelitis); extreme Schwellung und Spannungsblase frisch posttrauma (Kompartmentsyndrom); akute Blässe, Kälte und Pulslosigkeit (arterielle Ischämie); einseitige Beinschwellung mit Risikofaktoren (TVT) |

## Explicit non-goals / must-not

- No invented trap frames beyond C  
- No claim that CRPS is “only psychological” or “never psychological”  
- No anatomy free-vision requiring H-Gfx  

## Presentation hypothesis

multi-row mimic peel · frame→danger · optional must-not-miss chip rail

## Success criterion

Learner cannot exit the unit believing “überempfindlich” or “normaler Heilungsschmerz” clears the case when disproportion + vegetative signs (or fever/pus) are present.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition: free-vision **required**  
- [x] Claim pins from C §4  
- Visual-Unit → `medical-graphics` playbook G0–G3; claim audit labels **and** icons  
