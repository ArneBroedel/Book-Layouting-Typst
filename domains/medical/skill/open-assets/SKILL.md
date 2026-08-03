---
name: open-assets
description: "ALWAYS use when finding, evaluating, downloading, licensing, attributing, or documenting free/open/commercial-safe images, icons, medical photos, or vectors for book/chapter figures — before AI free vision or hand-drawn raster when realism or standard iconography is needed. Covers source catalogs (Commons, CDC PHIL, NCI, Health Icons, Servier, Open-i, paid stock), license traffic light (CC0/BY/SA/NC/ND/PD), attribution strings, personality rights, MANIFEST/CREDITS/sidecars, print DPI, one-winner-per-job embed. Use for Pass O, stock replacement, figure credits, 'darf ich dieses Bild nutzen', open archive search. Do NOT use for inventing clinical claims, free-vision generation itself (medical-graphics), Form Spec authorship (media-brief), or full chapter compose (compose-chapter)."
---

# open-assets (Domain medical / Produkt B — reusable)

Executable procedure for **Open Asset** work: search → rights → clinical fit → document → hand off for embed.

**Policy (short):** [`domains/medical/OPEN-ASSET-POLICY.md`](../../../OPEN-ASSET-POLICY.md)  
**SoT of this skill:** `domains/medical/skill/open-assets/`  
**Related:** `medical-graphics` (realize after Design CLEAN; free vision **after** open scan when required) · `media-brief` (when realism is essential) · Form Lab Pass O (`medium-rules-O.md`)

This skill does **not** invent pedagogy or clinical claims. It supplies **carriers** with **commercial-book-safe** provenance.

---

## Production entry (default path — not only sit.4 / Pass O)

This skill is a **unit-conditional specialist** on the production default path:

| Caller | When |
|---|---|
| **Studio situation 2** | After Design CLEAN; before free vision when `open_asset_scan=required` (optional light path) |
| **book-production P4** | Same sequence per unit — **not** a fixed always-on book phase |
| **medical-graphics G0b** | Hard refuse free gen / asset Accept when scan **required** and no MANIFEST outcome |
| Studio situation 4 | Graphics-focus entry (existing) |
| Form Lab Pass O | Lab-learning pilot only |

**Sequence:** Design CLEAN → **(this skill if needed)** → free vision / realize → Visual CLEAN → packet → Accept.  
**Never** always-on for every unit — `skip` for code/schema is correct and needs no empty MANIFEST.

## When to use

- User asks for free/open/stock/clinic photos, icons, Wikimedia, CDC, “Lizenz”, Attribution, Abbildungsnachweis  
- Before AI free vision / new illustration when **realism** or **standard icons** help the learner job  
- Production sit.2 / book-prod / G0b when Media set `open_asset_scan=required` (or optional)  
- Form Lab **Pass O** or any pilot that embeds third-party visuals  
- Reviewing whether an existing figure is legally documentable  
- Building or repairing MANIFEST / CREDITS / license sidecars  

## When NOT to use

| Situation | Use instead |
|---|---|
| Free vision gen / claim audit / Visual Critic loop | `medical-graphics` |
| Form Spec / Design Contract / Accept decision | `media-brief` |
| Production chapter compose/validate | `compose-chapter` |
| Full Form Lab T→S program | `form-lab-orchestrator` |
| Clinical claim rewrite | Content / `content-review` |
| Typst syntax only | `typst-writer` |
| Pure code/schema unit with `open_asset_scan=skip` | Stay on medical-graphics / compose — no ceremony |

---

## Non-negotiables

1. **Fair use / § 51 UrhG is not a default** for commercial textbook figures.  
2. **License is per file**, never “the website is free”.  
3. **Copyright ≠ personality rights** — CC can be green while face/patient risk is yellow/red.  
4. **CC BY needs a full attribution string** (author, title, license + URI, source URL; modifications if any).  
5. **One embedded mark per learner job** — MANIFEST may hold candidates; the page embeds the winner only.  
6. **Both gates** (Rights + Clinical/Didactic) required for `status=accepted`.  
7. **No silent AI substitute** for a failed open scan without logging the gap.  
8. This skill gives **process compliance**, not a lawyer’s clearance for production print.

---

## Pipeline

```text
0  Job brief (learner job, Must-see, realism_required, clinical_risk)
1  Source Scan          → source-scan.md + queries
2  Collect candidates   → ≤8; download local copies
3  Rights Gate          → license ampule; personality flag
4  Clinical Gate        → pins, Semantic Read, density, print size
5  Select winner        → one accepted per job
6  Document             → MANIFEST + license sidecar + CREDITS
7  Handoff embed        → path + attribution_full + alt + max print width
8  (Optional) Verify    → scripts/verify_commons_meta.py
```

Detail: [`references/process.md`](references/process.md)

---

## License traffic light (commercial book)

Load full rules: [`references/licenses-and-attribution.md`](references/licenses-and-attribution.md)

| Ampel | Typical | Embed? |
|---|---|---|
| **Grün** | CC0, PD, clear US-Gov PD, **CC BY**, MIT/Apache icons | Yes after full attribution where required |
| **Gelb** | CC BY-SA, Editorial stock, unclear model/patient, dual tags | Human/Legal; labels outside raster |
| **Rot** | NC*, ND* (if you crop/label into raster), no license, Social, Google-only, Editorial-only default | Do not embed |

**Pilot/default preference:** CC0 / PD / CC BY first; avoid SA/NC/ND.

---

## Source catalog (where to look)

Load: [`references/sources-catalog.md`](references/sources-catalog.md)

**Order (default):**

0. Internal `domains/medical/assets/` + book icons (FA6)  
1. Health Icons (CC0)  
2. CDC PHIL / NIH·NCI Visuals Online / HHS  
3. Open-i → **original** article/file license  
4. Wikimedia Commons (per-file; prefer BY/PD)  
5. Servier SMART (CC BY 4.0 — attribution)  
6. Paid **commercial** stock (Human)  
7. Controlled gen / Typst schema  

**Avoid as clinical core:** Unsplash / Pexels / random free stock (tags + model-release uncertainty).

---

## Job brief (required before search)

| Field | Values |
|---|---|
| `learner_job` | one sentence |
| `must_see` | visual essentials |
| `realism_required` | none \| helpful \| essential |
| `clinical_risk_if_wrong` | low \| high |
| `open_asset_scan` | required \| optional \| skip |
| `personality_sensitive` | no \| yes (faces, identifiable patients) |

**required** when: real disease appearance, high clinical risk, or anatomy free vision would be unsafe/paused.  
**skip** when: pure schema/flow/TIME ladder best as Typst.

---

## Rights Gate checklist

- [ ] Commercial book/PDF sale allowed  
- [ ] Exact license short name + version  
- [ ] `license_uri` known  
- [ ] `author` / rights holder known (or documented unknown for PD/CC0)  
- [ ] `attribution_full` string drafted (CC BY)  
- [ ] Modifications listed (`none` or exact)  
- [ ] Local file + `provenance_url` (file page) + `downloaded_at`  
- [ ] Optional: license UI screenshot path  
- [ ] `personality_rights`: `n/a` \| `unknown` \| `asserted-uploader` \| `cleared-human`  

**personality_rights = unknown** on recognizable people/faces → **not** auto-accepted for production; Human/Legal.

---

## Clinical / didactic Gate checklist

- [ ] Matches learner job / Must-see  
- [ ] No contradiction with frozen pins  
- [ ] Semantic Read without caption acceptable (or hybrid labels outside raster)  
- [ ] Density/style fit (pretty stock may fail)  
- [ ] Print: `max_print_width_mm` at 300 dpi ≥ planned layout width (else shrink or reject)  
- [ ] Mimics labeled as mimics (never implied as the taught disease)  

Script: `scripts/print_size_check.py`

---

## Documentation artifacts

| Artifact | Purpose |
|---|---|
| `source-scan.md` | Queries, archives, candidates, gaps |
| `MANIFEST.md` | Per-file machine-oriented table |
| `*.license.json` sidecar | Stable rights record + hash |
| `CREDITS.md` | Human-readable rollup |
| Caption / figure credit | Short form next to figure |
| Book abbildungsnachweis | Full strings (from MANIFEST) |

Templates: [`templates/`](templates/)  
Field definitions: [`references/documentation.md`](references/documentation.md)

### Status values

| status | Meaning |
|---|---|
| `candidate` | Downloaded; not page-ready |
| `accepted` | Both gates pass; may embed |
| `rejected` | Rights or clinical fail (keep reason) |

**Only `accepted` embeds.** Candidates stay for swap/audit — never a multi-redundant collage “for later Human cull”.

---

## Attribution (minimum patterns)

Full rules: [`references/licenses-and-attribution.md`](references/licenses-and-attribution.md)

**CC BY (example):**

```text
"Podagra" by Gonzosft, via Wikimedia Commons, CC BY 3.0 DE
(https://creativecommons.org/licenses/by/3.0/de/legalcode),
https://commons.wikimedia.org/wiki/File:Podagra.jpg
```

**CC0 / PD:** still name source/file page in CREDITS; caption can be shorter.

**Modifications:** append e.g. `Cropped to 4:3; no clinical retouch.`

**Icons (MIT/CC0/FA6):** project-level credits file + optional footnote; do not invent medical meaning the icon does not carry.

---

## Embed handoff (to compose / medical-graphics)

For each accepted asset deliver:

```yaml
path: domains/medical/assets/.../file.jpg
learner_job: ...
attribution_full: "..."
attribution_short: "..."   # caption line
alt: "..."                 # German, accessibility
license: CC-BY-3.0-DE
max_print_width_mm: 54
modifications: none
personality_rights: n/a
manifest_row: accepted
```

Compose must not invent shorter credits that drop required BY fields.

---

## Personality, ethics, clinical caution

Load: [`references/personality-and-ethics.md`](references/personality-and-ethics.md)

- Faces / identifiable patients → high scrutiny  
- Stroke face: prefer schema/icons; open “Bell” only as **labeled mimic**  
- Never use social-media clinical photos without rights  
- Uploader assertions on Commons are **not** independent legal clearance  

---

## Print & quality

Load: [`references/print-and-quality.md`](references/print-and-quality.md)

Rough rule: `max_width_mm ≈ (long_edge_px / 300) * 25.4`  
If layout needs larger → find higher-res asset or use smaller figure / Typst alternative.

---

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Run Source Scan when `open_asset_scan=required` | Fair use as default for book figures |
| Per-file license + provenance URL | Trust platform homepage only |
| Full CC BY attribution string | Caption = filename only for BY works |
| One winner per learner job on page | Dump all candidates into PDF |
| Dual gates for `accepted` | Accept on license alone if clinical FAIL |
| Document gaps honestly | Silent AI fill pretending to be open photo |
| Flag personality unknown | Assume CC clears patient rights |
| Keep rejected rows with reason | Delete provenance after reject |
| Prefer labels **outside** third-party rasters | Paint claims into NC/ND/SA rasters carelessly |

---

## Scripts

| Script | Use |
|---|---|
| [`scripts/verify_commons_meta.py`](scripts/verify_commons_meta.py) | Fetch Commons extmetadata for File: titles; print license/author |
| [`scripts/print_size_check.py`](scripts/print_size_check.py) | px → max mm @ 300 dpi |
| [`scripts/attribution_check.py`](scripts/attribution_check.py) | Heuristic: BY assets must have author-like token in attribution string |

```bash
python3 domains/medical/skill/open-assets/scripts/verify_commons_meta.py \
  "File:Podagra.jpg" "File:Melanoma.jpg"

python3 domains/medical/skill/open-assets/scripts/print_size_check.py \
  domains/medical/assets/form-lab/gicht-2026-08-o/podagra-cc-by.jpg
```

---

## Relationship to other skills

| Skill | Boundary |
|---|---|
| **open-assets** (this) | Search, rights, clinical fit, documentation, handoff paths |
| **medical-graphics** | Free vision / realize / Visual Critic — call open-assets **before** free gen when scan required |
| **media-brief** | Sets `realism_required` / Must-see; Accept still owns pedagogy |
| **compose-chapter** | Embeds accepted paths + credits; does not re-license |
| **form-lab-orchestrator** | Pass O uses this skill’s procedure under medium-rules-O |

**G0b Source Scan** is the production insertion point: between Design CLEAN and free vision (sit.2, book-prod P4, medical-graphics). Wire: `devtracks/_archive/open-assets-production-wire/`.

---

## Pilot / lab paths (examples)

```text
domains/medical/assets/form-lab/<lab-id>/
  MANIFEST.md  CREDITS.md  *.license.json  <files>
toolset/orchestration/form-lab/<lab-id>/source-scan.md
toolset/compose/pilots/form-lab-*-o/chapter.typ
```

Pass O medium rules: `toolset/orchestration/form-lab/_templates/medium-rules-O.md`

---

## References (load on demand)

| File | When |
|---|---|
| [`references/process.md`](references/process.md) | Full step-by-step + decision tree |
| [`references/sources-catalog.md`](references/sources-catalog.md) | Archives, URLs, pitfalls |
| [`references/licenses-and-attribution.md`](references/licenses-and-attribution.md) | Ampel, CC strings, SA/ND/NC |
| [`references/personality-and-ethics.md`](references/personality-and-ethics.md) | Faces, patients, mimics |
| [`references/documentation.md`](references/documentation.md) | MANIFEST fields, sidecars, book credits |
| [`references/print-and-quality.md`](references/print-and-quality.md) | DPI, style fit, density |

Templates: `templates/source-scan.template.md`, `manifest.template.md`, `credits.template.md`, `license-sidecar.template.json`, `embed-handoff.template.yaml`
