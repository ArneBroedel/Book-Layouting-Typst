# Image-generation brief for Antigravity / Nano Banana

## Product context (why this image exists)

This repository is a **Typst book-production system** (bookkit) for medical-didactic teaching materials (German).  
We are piloting a **Graphics** role (`medical-graphics`): after a Media Brief, decide whether a presentation is best realized as:

1. **Code** (Typst / Fletcher / CeTZ)  
2. **Hybrid** (SVG form + Typst labels)  
3. **Asset-full** (image file containing all labels)  
4. **Raster** (pixel graphics from AI image models)

**Use case of THIS image:**  
Chapter **III-2 BLS/AED Notfallkarte** (emergency action card for physiotherapists / practice team under stress).  
Visual unit **S4 — Primär-Algorithmus: Bewusstseinsstörung / Kollaps**.

The graphic will be **compared** against existing variants already in the repo:

- Code: `dist/spikes/graphics/iii2-bls-aed/code-p1.png`
- Hybrid SVG: `dist/spikes/graphics/iii2-bls-aed/hybrid-p1.png`
- SVG full: `dist/spikes/graphics/iii2-bls-aed/asset-p1.png`
- Grok Imagine raster: `dist/spikes/graphics/iii2-bls-aed/raster-full-p1.png`

Goal: produce a **Nano Banana / Antigravity** raster alternative that is visually strong *and* **logically correct**.

## Clinical flow (must be exact — do not invent steps)

```text
1 → 2 → 3 (Atmung normal? max. 10 s)
           ├─ ja ──────────────► 4a  Seitenlage · 112 · überwachen
           │                      ↻  stabil · weiter überwachen  (LOOP on 4a only)
           │                      ↘  Verschlechterung ──────────► 4b
           └─ nein / unsicher ───► 4b  112 · CPR · AED holen lassen
                                      ↓
                                     5  CPR 30:2 (Kurs) bzw. nur Kompressionen · AED folgen
                                      ↓
                                     6  Bis Übergabe RD · min. Pausen
```

### Hard invariants (reject any layout that breaks these)

1. Diamond **3** has **exactly two** outgoing arrows: **ja** → 4a, **nein/unsicher** → 4b.  
2. **No third arrow** from 3. No dead-end “ja” arrow.  
3. **5 and 6 only after 4b** — never a path 4a → 5.  
4. **4a** has a **monitoring loop** (“stabil / weiter überwachen”) **and** an escalation arrow **Verschlechterung → 4b**.  
5. German labels only (no English lane titles like “URGENT CPR”).  
6. No invented drug doses, no ALS, no anatomy photos of real people.

## Visual design targets

- Medical **textbook / notfall-karte** quality, clean, high contrast, print-friendly.  
- Palette cues: teal `#0d7377`, amber `#d4a039`, danger red `#dc2626`, success green `#16a34a`, white background.  
- Soft dual lanes optional: left green “Überwachen”, right red “CPR/AED”.  
- Number badges 1, 2, 3, 4a, 4b, 5, 6 legible; badge **3 outside** diamond so text “Atmung normal?” is not covered.  
- Portrait orientation preferred (~3:4). High resolution if possible (aim ≥1500px on short side).  
- Title: `Primär-Algorithmus: Bewusstseinsstörung / Kollaps`  
- Optional small footer: Kompressions-Rahmen ERC/GRC — Zielzahlen im BLS/AED-Kurs (no fake numbers).

## Reference files (structure inspiration — match LOGIC, improve visual)

Please inspect these if available:

- `@domains/medical/assets/iii2-bls-aed/primar-algorithmus-full.svg` (vector, correct flow v4)  
- `@domains/medical/briefs/iii2-bls-aed.graphics.md` (decision note)  
- `@domains/medical/briefs/iii2-bls-aed.brief.md` (Media Brief wishlist: branching protocol)

## Deliverable (required)

1. Generate a **PNG raster** using **Nano Banana** (or the best available Antigravity/Gemini image-generation tool for diagrams).  
2. Save it to:

```text
domains/medical/assets/iii2-bls-aed/primar-algorithmus-raster-nanobanana.png
```

3. Also copy/export a preview (optional but preferred):

```text
dist/spikes/graphics/iii2-bls-aed/nanobanana-p1.png
```

4. In your final text response, report:
   - absolute path of the saved file  
   - image pixel size  
   - which image tool/model was used (e.g. Nano Banana)  
   - short self-check: did you enforce the 4a loop and no 4a→5?

## Constraints

- Do not rewrite clinical content.  
- Prefer one excellent full-text diagram (labels baked into the image).  
- If the first image has wrong arrows, **regenerate or edit** until invariants hold.
