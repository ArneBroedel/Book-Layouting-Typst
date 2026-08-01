# Design Contract — `kl-mi-2026-08-01` / U-mimic

> **Phase D (Media Designer).**

- **chapter_id / slug:** V-1-myokardinfarkt / `kl-mi-2026-08-01`
- **unit_id:** U-mimic
- **form_spec_path:** `domains/medical/briefs/kl-mi-2026-08-01-mimic.form-spec.md`
- **brief_path:** `domains/medical/briefs/kl-mi-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-1-myokardinfarkt.md` §4 (read-only)
- **author_role:** media-designer (MD)
- **date:** 2026-08-01
- **status:** **design-clean**

## Learner job (one primary)

**distinguish** (false-frame error class)

**Primary job in one sentence:** Reject four comforting labels that demote ACS risk (GI, MSK, panic, palpation).

## Form intensity (required)

- **Chosen level:** **L4** (schematic dual-band / arrow rows encoding frame→danger)
- **Why not L−1 (L3 callouts):** four separate callouts re-stack as prose; dual-band geometry forces danger into same scan line as frame.
- **Why not L+1 (L5 peel):** four short pairs do not need peel animation; peel adds theater without new relations for this pilot.

## Simple alternative (required)

- [x] numbered / bulleted list as in C  
- [ ] plain prose  
- [ ] 2-column table without danger weight  

**Why not only that floor:** danger half is buried after comforting frame language under scan stress.

## Space budget (required — book density)

- **Teaching gain vs next-lower intensity:** **clear**  
- **Max vertical budget:** ☑ ~¼ page · hard cap ~⅓  
- **Why earned:** four dense dual rows + header  
- **If gain ≤ weak → step down:** would drop to L3 dual-fill list  

## Form choice

- **Pattern name:** four-row frame→danger map (arrow dual-band)
- **Intensity level:** L4  
- **Media-design reason:** Segmenting one error class per row; dual coding frame vs danger by fill/weight; contiguity of pair; dense type.  
- **Medical-pedagogy reason:** ACS distinctive false frames are **Magen**, **Schulter/BWS**, **Panik**, **druckschmerzhaft=muskulär** — each has different danger payload; a single generic “don’t miss ACS” banner loses the Palpationsfalle and MHS-context lesson.

## Reading order

1. Header Trügerische Erklärungen  
2. Row 1 Magen → danger  
3. Row 2 Schulter/BWS → danger  
4. Row 3 Panik → danger  
5. Row 4 Palpation → danger (loudest trap for DA)

## Atom table

| atom_id | element | encodes for learner | media-design principle | medical-pedagogy reason | if removed, what breaks? | reject if… |
|---|---|---|---|---|---|---|
| A1 | Four separate rows | one error class each | segmenting | four distinct C frames | frames merge | 2×2 FA grid |
| A2 | Frame column muted / quoted | comforting false label | dual coding quiet side | C language in quotes | frame not recognizable | English meta “Label” |
| A3 | Danger column bold danger accent | real ACS risk | signaling | danger must win scan | comfort wins | danger muted |
| A4 | Arrow / map mark frame→danger | direction | dual coding relation | error-mode direction | reverse mapping risk | reverse arrow |
| A5 | Palpation row present (row 4) | DA-specific trap | must-see | kl-voll Vertiefung | MHS misuse survives | drop row 4 |
| A6 | Dense type | book density | space budget | monograph | sparse hero | full-page peel |

## Must-see

1. Frame → Gefahr direction  
2. Four frames including Palpation  
3. No form-meta  
4. No FA 2×2 collapse  

## Anti-theater

| rejected idea | why |
|---|---|
| Peel comic without pins | theater |
| Single septic/ACS banner | loses four error classes |
| 2×2 with FA | ontology fail |
| Anatomy heart gore | wrong unit |

## Success criterion (observable)

Critic sees four frame→danger rows; Palpation present; direction correct; ≤⅓ page.

## Design Critic link

- **critique_path:** `domains/medical/briefs/kl-mi-2026-08-01.design-critique.md`
- **design_clean:** yes
