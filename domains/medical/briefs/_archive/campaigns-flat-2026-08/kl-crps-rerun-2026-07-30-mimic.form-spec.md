# Form Spec — CRPS mimic · `kl-crps-rerun-2026-07-30`

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-rerun-2026-07-30-mimic`
- **unit_id:** U-mimic
- **brief_path:** `domains/medical/briefs/kl-crps-rerun-2026-07-30.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-3-crps-sudeck.md` (read-only)
- **genre:** illness-script / lerntext (kl-kurz)
- **recipe_fn:** kl-mimic-map / kl-mimic-peel
- **author_role:** media
- **date:** 2026-07-30
- **ambition:** free-vision **required**
- **track hint (Graphics G0):** **`free-vision-ambition`**

## Learner context

- **Actor:** HP Physio Direktzugang
- **Time pressure / scan budget:** 8–15 s to reject false frame
- **Setting:** posttrauma Nachbehandlung conversation

## Learner job (one primary)

**distinguish** (error frames)

**Primary job:** See that common reassuring phrases do **not** clear organische Notfall-DDx or CRPS-suspicion.

## Load risks (if form is wrong)

- Frames buried in prose  
- “Psychosomatik” frame reads as permission to stop workup  
- Fieber/Eiter still looks like “inflammatory CRPS”  
- Decorative peel without readable German danger payload  

## Cognitive / layout levers

- dual coding (mask peels → danger)
- signaling (danger color only on truth side)
- segmenting (4 discrete frames)
- contiguity (frame adjacent to its danger)

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title | medium | content role “Trügerische Erklärungen” | content label, not form-meta |
| Frame cards (×4) | medium | false reassurance | pale/mask layer |
| Danger reveal | loud | real clinical danger | dark/danger payload under peel or after arrow |
| Optional consequence | quiet | delay/wrong path | secondary line |

## Must-see elements

1. Exactly **four** false frames from C  
2. Each frame maps to a concrete **danger** (not empty “Vorsicht”)  
3. Fieber/Eiter frame prioritizes **Infekt** over CRPS label  
4. Visual hierarchy: frame is *wrong*, danger is *loud*  
5. German only  

## Icon meaning (free-vision criteria)

| pin / zone | drawing must show | must not show |
|---|---|---|
| peel/mask | false phrase as removable surface | anatomy limb photo |
| danger | clinical risk text readable | EN “Action/Trigger” chrome |
| arrow/flow | frame → danger direction | 2×2 matrix of all §4 |

## Urgency / weight encoding

- Danger side uses danger red/near-black  
- Frame side neutral/white  
- No solid-red full page  

## Genre chrome

- **Must look like:** illness-script mimic peel or map (error teaching)  
- **Must not look like:** DDx table; notfall-karte; form-language caption  

## Claim pins (German, copy-through C §4)

| zone | allowed text (German) |
|---|---|
| Title | Trügerische Erklärungen |
| Frame 1 | „Normaler Heilungsschmerz“ |
| Danger 1 | entwarnt bei klarer Disproportionalität und vegetativen Zeichen **nicht** |
| Frame 2 | „Psychosomatik / Überempfindlichkeit“ |
| Danger 2 | psychische Anteile schließen organische Notfall-DDx und CRPS **nicht** aus |
| Frame 3 | „Nur Nervenläsion / isolierte Neuropathie“ |
| Danger 3 | isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild |
| Frame 4 | „Entzündliches CRPS“ bei Fieber/Eiter |
| Danger 4 | systemische oder lokale Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben Vorrang vor dem CRPS-Label |

## Explicit non-goals / must-not

- No fifth invented frame  
- No anatomy free vision  
- No EN decorative titles  
- No form-meta inside figure  

## Presentation hypothesis

mimic peel (preferred free vision) with map-rows code fallback

## Success criterion

Under scan stress the learner **rejects** “Heilungsschmerz / Psychosomatik” as clearance and **prioritizes Infekt** when Fieber/Eiter is present.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition required  
- [x] Claim pins from C  
