# Form Spec (Media — Stage M) — MI Mimic (Trügerische Erklärungen)

- **chapter_id / slug:** V-1-myokardinfarkt / `kl-mi-2026-08-01`
- **unit_id:** U-mimic
- **brief_path:** `domains/medical/briefs/kl-mi-2026-08-01.brief.md`
- **content_source:** Kursbuch5 `…/chapter-v-1-myokardinfarkt.md` §4 + Vertiefung (read-only)
- **content_map:** `domains/medical/briefs/_wave6/kl-mi-2026-08-01.content-map.md`
- **genre:** illness-script / lerntext (kl-voll Master)
- **recipe_fn:** `kl-mimic-map` (default)
- **author_role:** media
- **date:** 2026-08-01
- **ambition:** free-vision **optional** (peel); default **code** mapping rows
- **track hint (Graphics G0):** grammar-only / code default
- **design_contract_path:** `domains/medical/briefs/kl-mi-2026-08-01-mimic.design-contract.md`
- **design_clean:** yes

## Learner context

- **Actor:** PT / HP Physio Direktzugang under mislabel risk
- **Time pressure / scan budget:** 10–25 s for false-frame rejection
- **Setting:** Praxis; Patient:in bagatellisiert („Magen“, „Blockade“, „Panik“); palpatorisch „reproduzierbar“

## Learner job (one primary)

**distinguish** (error mode)

**Primary job in one sentence:** Den trügerischen Alltags-/MSK-Frame hören, die **reale ACS-Gefahr** dahinter mappen und **nicht** entwarnen (inkl. Palpationsfalle).

## Simple alternative (required)

- boring default: prose bullets as in C  
- why not only that: danger half buried after comforting frame language under scan stress; dual-band rows force frame vs danger into one eye movement

## Load risks (if form is wrong)

- Frames ohne Danger-Seite  
- Richtung umkehren  
- Mit Erhärtet/Passt-nicht in **ein 2×2** gequetscht  
- 4. Frame „druckschmerzhaft = muskulär“ versteckt  
- Meta-UI / form-meta  
- Case-Spoiler als Auflösung

## Cognitive / layout levers

- **Contiguity:** Frame unmittelbar neben Gefahr  
- **Signaling:** Gefahr lauter als Frame  
- **Segmenting:** eine Zeile pro Frame (4 Frames)  

## Information architecture (zones)

| zone | loudness | content role | must feel like |
|---|---|---|---|
| Header | medium | „Trügerische Erklärungen“ | error-mode, **kein** Form-Meta |
| Mapping rows 1–4 | medium-loud | Frame → Gefahr | gerichtete Map |
| Quiet link | quiet | Verweis auf 112-Pfad | nicht konkurrierend |

## Must-see elements

1. Richtung **Frame → Gefahr**  
2. Vier Frames: Magen · Schulter/BWS · Panik · Palpation  
3. Palpations-Frame **Pflicht** (kl-voll)  
4. Keine Print-Wörter „Label“ / Ontology-IDs  
5. Kein PT-Diagnose-Claim in der Konsequenz  

## Claim pins (German, copy-through)

| Frame | Mapping |
|---|---|
| „Magen / Gastritis“ | Epigastrischer Schmerz mit Vegetativum und Risikofaktoren kann ACS-Mimikry sein — nicht als rein gastrointestinal abtun |
| „Linke Schulter / BWS-Blockade“ | Ausstrahlung oder Ischämie-Äquivalent hinter scheinbar orthopädischem Bild — bei retrosternalem Druck/Dyspnoe → Notfallverdacht |
| „Panik / Hyperventilation“ | Vernichtungsschmerz, Kaltschweiß und Risikoprofil ersetzen keine 112-Entscheidung |
| „Druckschmerzhaft, also muskulär“ | Palpation senkt in ärztlichen MHS-Kohorten die KHK-Wahrscheinlichkeit — im Direktzugang *niemals* alleinige Entwarnung |

## Explicit non-goals / must-not

- No form-meta / EN UI chrome  
- No invented fifth bagatelle  
- No reverse mapping  
- No spoiler solution keys  
- No content rewrite  

## Presentation hypothesis

**M-A mapping rows** (default, code)

## Success criterion

Unter Scan-Stress mappt die lernende Person Magen-, Schulter/BWS-, Panik- und Palpations-Frames auf die **reale ACS-Gefahr** und **entwarnt nicht** allein durch Druckdolenz.

## Handoff to Graphics

- [x] Form Spec complete  
- [x] design_clean: yes
