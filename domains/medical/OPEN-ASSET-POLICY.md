# Open-Asset Policy (Produkt B) — pilot / testable

**Status:** active pilot (2026-08-03) — **not** deep-integrated into production Media→Graphics pipeline  
**Executable skill (SoT):** [`domains/medical/skill/open-assets/`](skill/open-assets/SKILL.md) — search, sources, licenses, attribution, MANIFEST/CREDITS, personality, print size  
**Scope now:** lab + compose pilots under Form Lab **Pass O** (Open Asset); any third-party figure work  
**Production default:** Design CLEAN → **conditional** open-assets (`open_asset_scan: required|optional|skip`) → free vision / code realize. Wire: sit.2 / book-prod P4 / G0b (`devtracks/_archive/open-assets-production-wire/`). Not always-on.
**Research basis:** Gemini + Perplexity open-asset research (2026-08) + internal strategy  
**Pilot wave:** `toolset/orchestration/form-lab/portfolio-open-asset-2026-08/`

---

## 1. Principle

Before **AI free vision** or new illustration for a unit that needs **realism** or **standard iconography**, run a **Source Scan** for commercially usable open material.

Open assets are a **carrier** (`open-photo` | `open-icon` | `open-vector`), not a substitute for:

- frozen claim pins  
- Design / didactic intent  
- clinical / Semantic Read gates  
- Visual CLEAN on PNG  

**Fair use / § 51 UrhG is not a default** for commercial textbook figures.

---

## 2. License traffic light (commercial book)

| Ampel | Licenses / cases | Rule |
|---|---|---|
| **Grün** | CC0, Public Domain, clear US-Gov PD, **CC BY**, MIT / Apache icons (with notice) | Production-capable after documentation |
| **Gelb** | **CC BY-SA** (share-alike on derivatives), unclear model/patient rights, dual/unknown tags | Human review; prefer labels **outside** raster |
| **Rot** | **NC***, **ND*** in practice (crop/arrows/labels), Editorial-only stock, no license, Social/App screenshots, Google-found only | Do not embed |

**Pilot defaults (stricter for speed):**

- Prefer **CC0 / PD / CC BY** only.  
- **CC BY-SA** allowed only if raster is used **without** destructive edit and credits list SA.  
- **NC / ND / Editorial** → reject.

---

## 3. Preferred source order (SOP)

```text
0  Internal fund (`domains/medical/assets/…`) + book icon system (FA6)
1  Health Icons (CC0) — UI / emergency pictograms
2  CDC PHIL / NIH·NCI Visuals Online / HHS galleries — check per image
3  Open-i / PMC figures — Open-i is a SEARCHER; license at original article/file
4  Wikimedia Commons — per-file license; prefer BY/PD over SA
5  Servier Medical Art (CC BY 4.0) — schemas/vectors; attribution required
6  Paid commercial stock (Human) — never Editorial-only by default
7  Controlled gen / Typst schema — if open scan fails or didactic gain weak
```

**Avoid for clinical cores:** Unsplash / Pexels / random free stock (wrong clinical tags, model-release uncertainty).

---

## 4. Dual gates (hard)

### Rights Gate

- [ ] Commercial book use allowed  
- [ ] License short name + version known  
- [ ] Attribution text known  
- [ ] Modifications planned documented (crop? recolor? none)  
- [ ] Local file + **permalink** + **download date**  
- [ ] Optional: screenshot of license UI (recommended)

### Clinical / didactic Gate

- [ ] Matches learner job / Must-see  
- [ ] Does not contradict frozen pins  
- [ ] Semantic Read without caption OK (or hybrid labels fix orientation only)  
- [ ] Density / style fit (stock chrome may **fail** even if rights pass)  
- [ ] Patient identity / stigma risk acceptable  

**Both gates required** for `status=accepted` in MANIFEST.

---

## 5. Carrier choice

| Need | Prefer |
|---|---|
| Blickdiagnose (Läsion, Gelenk, Quaddeln) | Open **photo** 1:1 or hybrid |
| Orientation / name structures | **Hybrid:** photo + Typst labels **outside** raster |
| Process / TIME / mimic peel / algorithm | **Typst schema** (open art only as reference) |
| UI / triage / 112 / Autoinjektor metaphor | **Icons** (Health Icons / FA6) |
| Face stroke sensitivity | Prefer schema/icons; photo only with strong rights+ethics |

**Omit is a win:** no open asset when gain ≤ weak vs simple text/panel.

**One mark per learner job on the page:** Source Scan may list up to ~8 *candidates* in MANIFEST; the compose draft embeds **at most one** accepted winner per job (plus optional hybrid labels). Do **not** dump the candidate shelf into the PDF for “later Human cull” — selection happens at Source Scan / Builder decision *before* page embed. Human review can still swap the winner, not sort a collage of duplicates.

---

## 6. Artifacts (pilot)

| Artifact | Path pattern |
|---|---|
| Policy (this file) | `domains/medical/OPEN-ASSET-POLICY.md` |
| Source-scan template | `domains/medical/templates/source-scan.template.md` |
| Pass O medium rules | `toolset/orchestration/form-lab/_templates/medium-rules-O.md` |
| Portfolio board | `toolset/orchestration/form-lab/portfolio-open-asset-2026-08/` |
| Per-lab board | `toolset/orchestration/form-lab/<chapter>-2026-08-o/` |
| Assets + MANIFEST | `domains/medical/assets/form-lab/<chapter>-2026-08-o/` |
| Compose pilot | `toolset/compose/pilots/form-lab-<chapter>-o/chapter.typ` |
| Credits rollup | `domains/medical/assets/form-lab/<chapter>-2026-08-o/CREDITS.md` |

---

## 7. MANIFEST fields (minimum)

| Field | Example |
|---|---|
| `path` | `…/podagra-clinical.jpg` |
| `role` | main \| cue \| icon \| hybrid-base |
| `learner_job` | hot joint gestalt |
| `source` | wikimedia \| cdc-phil \| healthicons \| … |
| `provenance_url` | file page / permanent URL |
| `license` | CC-BY-3.0 / CC0 / PD-USGov |
| `attribution_text` | exact credit line |
| `modifications` | none \| crop-4:3 \| … |
| `rights_gate` | pass \| fail |
| `clinical_gate` | pass \| fail \| human |
| `status` | candidate \| accepted \| rejected |
| `downloaded` | ISO date |
| `alt` | German short alt |

Only **`status=accepted`** may ship in the Pass-O pilot PDF.

---

## 8. Pass O (lab medium) — not production default

**Goal:** stress-test *maximum* teaching load from **external open visuals** for the four KL anchors (Gicht, Melanom ABCDE, Anaphylaxie, Schlaganfall).

**Allow:** open photos, open icons/SVG, open medical vectors, Typst for structure/labels/credits only.  
**Deny as primary teaching mark:** new AI free-vision gens, new hand-drawn CeTZ pedagogy pretending to be open-sourced.  
**Escape:** if no viable open asset → document **gap** in source-scan and use minimal Typst placeholder labeled `[open-gap]`.

Full Form Lab autodrive (T→C→V→R→S) is **unchanged**. Pass O is a **parallel pilot** for evaluation.

---

## 9. What is *not* integrated yet

- No hard block in `medical-graphics` before free vision  
- No book-production-orchestrator gate  
- No automatic Commons search CLI  
- No legal review automation  

When the pilot proves value: promote gates into Graphics G0b + skill ALWAYS/NEVER.

---

## 10. How to run the pilot

```bash
# 1) Read policy + medium rules O
# 2) Per chapter: fill source-scan.md, download to assets/…, MANIFEST
# 3) Compose pilot
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/pilots/form-lab-gicht-o/chapter.typ \
  dist/form-lab/gicht-2026-08-o/chapter.pdf

# 4) PNG pages for visual check
typst compile --root . --ignore-system-fonts --font-path fonts \
  --format png --ppi 150 --pages 1-2 \
  toolset/compose/pilots/form-lab-gicht-o/chapter.typ \
  dist/form-lab/gicht-2026-08-o/p{n}.png
```

Open previews (WSL):

```bash
code dist/form-lab/gicht-2026-08-o/p1.png
```
