# Form Spec (Media — Stage M) — LE Mimic (Trügerische Erklärungen)

- **chapter_id / slug:** V-2-lungenembolie / `kl-le-2026-08-01`
- **unit_id:** U-mimic
- **brief_path:** `domains/medical/briefs/kl-le-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-2-lungenembolie.md` §4 Trügerische Erklärungen (read-only)
- **content_map:** `domains/medical/briefs/_wave6/kl-le-2026-08-01.content-map.md`
- **genre:** illness-script / lerntext
- **recipe_fn:** frame→danger map
- **author_role:** media
- **date:** 2026-08-01
- **ambition:** free-vision **skip** — default realize **code** (`kl-mimic-map` transfer)
- **track hint (Graphics G0):** grammar-only / code default
- **design_contract_path:** `domains/medical/briefs/kl-le-2026-08-01-mimic.design-contract.md`
- **design_clean:** yes

## Learner context

- **Actor:** HP Physio Direktzugang
- **Time pressure / scan budget:** 10–20 s across four frames
- **Setting:** Praxis; patient brings a false MSK/post-OP/post-infect label

## Learner job (one primary)

**distinguish** (error class: false frame)

**Primary job in one sentence:** Reject four false explanations that demote a LE/VTE picture, especially when palpation-positive BWS coexists with Dyspnoe or Tachykardie.

## Simple alternative (required)

- boring default: four prose bullets as in C  
- why not only that: under scan stress the **danger half** of each frame is buried after the comforting frame language; dual-band rows force frame vs danger into one eye movement

## Load risks (if form is wrong)

- Only frame column visible (comfort language wins)  
- One generic “don’t miss LE” row instead of four distinct errors  
- 2×2 FA grid misused for mimic  
- Peel theater without readable German pins  
- English stage titles / form-meta  

## Cognitive / layout levers

- **Segmenting:** one row per false frame  
- **Dual coding:** left = frame (quieter), right = danger (stronger)  
- **Signaling:** danger column weight > frame column  
- **Contiguity:** frame and its specific danger adjacent  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Header | medium | content title Trügerische Erklärungen | C language |
| Row 1 BWS/Brustwand | medium-loud | frame→danger | palpation mask |
| Row 2 Post-OP | medium | frame→danger | VTE risk after OP |
| Row 3 Wadenzerrung | medium | frame→danger | TVT before embolus |
| Row 4 Pleuritis nach Infekt | medium | frame→danger | postinfektiöses VTE |
| Quiet | quiet | no answer-key | not a quiz key |

## Must-see elements

1. Exactly **four** rows matching C frames  
2. Each row: **frame phrase** + **why false / what remains**  
3. Row 1 must carry: Palpationsempfindlichkeit masks LE when Dyspnoe/Tachykardie co-travel  
4. Row 2: Post-OP shoulder/thorax pain is not free Verspannung given VTE risk  
5. Row 3: unilateral leg pain after flight/immobilization = TVT risk, no load test  
6. Row 4: post-infect “Pleuritis” does not clear LE when pleuritic pain + Dyspnoe  
7. No fifth invented frame  

## Icon meaning

| pin / zone | drawing must show | must not show |
|---|---|---|
| danger band | stronger weight than frame | decorative X without text |

## Urgency / weight encoding

- Frame side: cooler / lighter  
- Danger side: amber-to-danger weight (not solid full-page red)  
- Master chrome remains teal framework  

## Genre chrome

- **Must look like:** kl Master dual-band error map  
- **Must not look like:** comic peel poster; solid-red wall; form-meta captions

## Claim pins (German, copy-through from C)

| zone | allowed text (German) |
|---|---|
| Header | Trügerische Erklärungen |
| Row 1 frame | „BWS-Blockade / Brustwandsyndrom“ |
| Row 1 danger | lokaler stechender Schmerz und scheinbar reproduzierbare Palpationsempfindlichkeit maskieren LE, sobald Dyspnoe oder Tachykardie mitlaufen |
| Row 2 frame | Postoperative Schulter-/Thoraxschmerzen |
| Row 2 danger | als Lagerungsschaden oder Verspannung abgetan, obwohl OP, Immobilität und Analgetika das VTE-Risiko massiv erhöhen |
| Row 3 frame | „Wadenzerrung“ nach Flug oder Ruhigstellung |
| Row 3 danger | einseitiger Beinschmerz kann TVT mit drohender Embolisierung sein — nicht als reine Muskelverletzung abschließen; kein Belastungstest |
| Row 4 frame | „Pleuritis nach Infekt“ |
| Row 4 danger | pleuritischer Schmerz nach schwerer Infektion (z. B. COVID-19) kann LE überdecken; VTE-Risiko postinfektiös erhöht |

## Explicit non-goals / must-not

- No fifth invented frame  
- No form-meta  
- No free-vision lung art as mimic carrier  

## Presentation hypothesis (pattern name)

four-row dual-band frame→danger map (LE pins)

## Success criterion

Under ~15–20 s scan the learner rejects all four frames; palpation-positive BWS never clears LE when Dyspnoe/VTE context present.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] Ambition flag set (code default)  
- [x] Claim pins reviewed against C  
