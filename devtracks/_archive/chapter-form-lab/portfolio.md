# Form Lab — Kapitel-Portfolio (Welle-06 pin)

**Content root:**  
`/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-06-kl-full/monographs/`  

**Locked:** 2026-08-02 · N=**4** · diversity for media extremes (T/C/V/R)  
**Source wave:** `2026-07-welle-06-kl-full` (INDEX GRÜN / done)  
**Execution status:** waves **c** and **d** T–S + harvest **COMPLETE** · Pass **O** pilot parallel · see [STATUS.md](STATUS.md)

---

## Selected four

| # | Lab slug | Monograph file | Wave id | Typ | Primary visual / didactic challenge |
|---|---|---|---|---|---|
| **1** | `gicht` | `chapter-v-3-gicht.md` | K75 | kl-kurz | **Lokale Gestalt + Mimic:** heiße Podagra / MTP-I; Kristall entwarnt nicht; TIME monoarthritis |
| **2** | `schlaganfall` | `chapter-v-4-schlaganfall.md` | K07 | kl-voll | **Screening-Schema am Körper:** FAST (Gesicht/Arm/Sprache); Zeitfenster; multi-T1 Neuro-Notfall |
| **3** | `melanom-abcde` | `chapter-v-10-melanom-abcde-hautscreening.md` | K63 | kl-kurz | **Kriterien-by-picture:** ABCDE-Icons/Vergleich; Screening ≠ Notfallkarte; Icon-Semantik-Risiko |
| **4** | `anaphylaxie` | `chapter-v-12-anaphylaxie.md` | K12 | kl-voll | **Multi-System + Handlungssequenz:** Kaskade Haut/Atem/Kreislauf; Sofortmaßnahmen; Mimic „nur Angst/Asthma“ |

### Absolute paths (pins)

```text
…/monographs/chapter-v-3-gicht.md
…/monographs/chapter-v-4-schlaganfall.md
…/monographs/chapter-v-10-melanom-abcde-hautscreening.md
…/monographs/chapter-v-12-anaphylaxie.md
```

---

## Why this mix (diversity axes)

| Axis | Gicht | Schlaganfall | Melanom | Anaphylaxie |
|---|---|---|---|---|
| System | MSK / Gelenk | Neuro vaskulär | Haut / Onko-Screen | Allergie multi-organ |
| Länge / Typ | kurz | voll | kurz | voll |
| Urgency shape | T1–T4 mono + septic mask | hyper-akut 112 / FAST | oft zeitnah Facharzt, selten 112 | hyper-akut Adrenalin/112 |
| Spatial / picture job | ein Gelenk-Hotspot | Gesicht–Arm–Sprache | Läsionsmerkmale A–E | systemische Kaskade, wenig eine „Stelle“ |
| Strong Pass T? | yes (claims, hierarchy) | yes (steps, scores) | yes (ABCDE text) | yes (action list) |
| Strong Pass C? | TIME/mimic chrome | urgency + FA | quieter screening chrome | solid emergency chrome |
| Strong Pass V? | foot/joint glyphs | FAST stick figures | A–E icon set | pathway / organ icons |
| Strong Pass R? | hot joint photo-like | face droop / arm drift atoms | lesion atoms (claim-hard) | urticaria / swelling atoms (careful claims) |
| Known prior layout debt | demoted hybrid 08-01 | FAST densified in explore | ABCDE icon FAIL history | less explore-polished |

**Avoided near-duplicates of Gicht:** Kompartment, bakterielle Arthritis, CRPS (same MSK/illness-script shell stress).  
**Avoided second pure ACS-style:** MI/LE similar multi-T1 cardio-pulm stack as each other — Stroke + Anaphylaxie cover acute without doubling LE/MI.

---

## Execution order (recommended)

Serial **per chapter** through all media passes is expensive (4×4). Prefer:

### Option A — Depth-first per chapter (default)

```text
for chapter in gicht → schlaganfall → melanom-abcde → anaphylaxie:
  T → C → V → R → (compare chapter) → S_chapter
then cross-chapter harvest
```

Learn full medium stack early on Gicht; transfer craft to the others.

### Option B — Medium-first (max medium skill)

```text
Pass T for all 4 → Pass C for all 4 → …
then per-chapter S
```

Better for training typography skill once; worse for chapter coherence mid-lab.

**Plan default: Option A**, starting with Gicht.

---

## Lab ids

| Chapter | lab_id (board root) |
|---|---|
| Gicht | `form-lab/gicht-2026-08` |
| Schlaganfall | `form-lab/schlaganfall-2026-08` |
| Melanom | `form-lab/melanom-abcde-2026-08` |
| Anaphylaxie | `form-lab/anaphylaxie-2026-08` |

Master board (optional): `form-lab/portfolio-2026-08/board.md` listing all four.

---

## Alternate (if Human swaps)

| Instead of | Consider | Why |
|---|---|---|
| Anaphylaxie | `chapter-vi-4-suizidalitaet-eskalation.md` (K08) | Non-anatomy extreme: conversation risk ladder; Pass R/V hard by design |
| Melanom | `chapter-v-3-cauda-equina-syndrom.md` (K02) | Saddle/spatial CES; more MSK-neuro than skin |
| Schlaganfall | `chapter-v-2-lungenembolie.md` (K05) | Only if cardio-pulm preferred over neuro FAST |

---

## Out of portfolio (explicit)

- Coherence jobs C01–C06 (not single monographs)  
- Remaining 84 monographs — harvest may later pick transfer targets  

---

## B-wave restart (2026-08-b)

Clean restart labs (prior `*-2026-08` retained as provenance):

| Chapter | lab_id |
|---|---|
| Gicht | `form-lab/gicht-2026-08-b` |
| Schlaganfall | `form-lab/schlaganfall-2026-08-b` |
| Melanom | `form-lab/melanom-abcde-2026-08-b` |
| Anaphylaxie | `form-lab/anaphylaxie-2026-08-b` |

Master: `form-lab/portfolio-2026-08-b/board.md`
