# Form Spec — CRPS mimic · `kl-crps-wp9-2026-07-31`

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-wp9-2026-07-31-mimic`
- **unit_id:** U-mimic
- **brief_path:** `domains/medical/briefs/kl-crps-wp9-2026-07-31.brief.md`
- **design_contract_path:** `domains/medical/briefs/kl-crps-wp9-2026-07-31-mimic.design-contract.md`
- **content_source:** C §4 Trügerische Erklärungen (read-only pins)
- **genre:** illness-script / lerntext (kl-kurz)
- **recipe_fn:** kl-mimic-map (hierarchy map-rows; peel geometry rejected for this pilot)
- **author_role:** media-designer (MD)
- **date:** 2026-07-31
- **ambition:** hierarchy required; **free vision not required** this pilot (see Contract — peel theater rejected after re-run negative gold)
- **track hint (Graphics G0):** **`code` with dual-coding hierarchy** (not pin-monotone prose)

## Learner context

- **Actor:** HP Physio Direktzugang  
- **Time pressure / scan budget:** 8–15 s to reject false frames  
- **Setting:** posttrauma Nachbehandlung conversation  

## Learner job (one primary)

**distinguish** (error frames)

**Primary job:** See that common reassuring phrases do **not** clear organische Notfall-DDx or CRPS-suspicion; Infekt has priority when Fieber/Eiter is present.

## Load risks (if form is wrong)

- Frames buried in prose  
- “Psychosomatik” reads as permission to stop workup  
- Fieber/Eiter still looks like inflammatory CRPS  
- 4-col peel with unreadable German (re-run) or raw Typst on page  
- Decorative peel without danger payload  

## Cognitive / layout levers

- dual coding (frame quiet → danger loud)  
- signaling (danger red only on truth side + alert row 4)  
- segmenting (4 discrete rows)  
- contiguity (frame adjacent to its danger via →)  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Title | medium | Trügerische Erklärungen | error teaching, not form-meta |
| Frame (left) | medium-quiet | false reassurance phrase | familiar excuse |
| Arrow | medium | frame → danger | direction of correction |
| Danger (right) | loud | clinical rebuttal | hard correction |
| Row 4 alert | loud | Infekt before CRPS label | must not miss |

## Must-see elements

1. Exactly **four** false frames from C  
2. Each maps to a concrete **danger** (not empty “Vorsicht”)  
3. Fieber/Eiter prioritizes **Infekt** over CRPS label  
4. Hierarchy: frame wrong / danger loud  
5. German only; body text ≥7.5pt where possible  

## Claim pins (German, copy-through C §4)

| zone | allowed text (German) |
|---|---|
| Title | Trügerische Erklärungen |
| Frame 1 | „Normaler Heilungsschmerz“ |
| Danger 1 | entwarnt bei klarer Disproportionalität und vegetativen Zeichen *nicht* |
| Frame 2 | „Psychosomatik / Überempfindlichkeit“ |
| Danger 2 | psychische Anteile schließen organische Notfall-DDx und CRPS *nicht* aus |
| Frame 3 | „Nur Nervenläsion / isolierte Neuropathie“ |
| Danger 3 | isolierte Nervenverletzung erklärt kein volles regionales vegetativ-trophisches Bild |
| Frame 4 | „Entzündliches CRPS“ bei Fieber/Eiter |
| Danger 4 | Infektzeichen (Osteomyelitis, septische Arthritis, Wundinfekt) haben *Vorrang* vor dem CRPS-Label |

## Explicit non-goals / must-not

- No fifth invented frame  
- No anatomy free vision  
- No 4-column micro-peel cards (rejected for WP9)  
- No EN decorative titles  
- No form-meta inside figure  
- No raw Typst markup on page  

## Presentation hypothesis

**Map-rows:** each row = frame | → | danger; row 4 danger border/fill. Better than plain bullets (dual coding) and better than 4-col peel (readable text).

## Success criterion

Under scan stress the learner rejects Heilungsschmerz/Psychosomatik as clearance and prioritizes Infekt when Fieber/Eiter present.

## Simple alternative (required)

Bulleted “frame — danger” list — **rejected** only if map-rows remain clearly more scannable (Contract).

## Design Contract

- [x] linked — Design CLEAN before realize  
