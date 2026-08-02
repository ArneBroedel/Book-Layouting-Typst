# Free vision (Phase A)

**When:** track = **`free-vision-ambition`** (default for real visual units after Form Spec / Media Brief — decision-flow, mechanism, cue-cluster, urgency, mimic, spatial, high wishlist).  
**Not when:** track = `grammar-only` (opt-in re-pin only) or `none`.  
**Goal:** best *didactic visual idea* — not bookkit compliance.  
**After every free gen:** write **harvest** (composition cues) — see `domains/medical/templates/graphic-harvest.template.md`. DRIFT does not discard harvest.

## Inputs allowed

| Input | Role |
|---|---|
| **Form Spec** (preferred) | Must-see, zones, claim pins, genre chrome, success criterion |
| Media Brief section ideal / hypothesis | What the learner should *see* |
| Content labels from C | Claim-safe wording only |
| Genre recipe function | Stress/scan constraints (e.g. notfall-karte) |

## Inputs forbidden (free mode)

| Forbidden | Why |
|---|---|
| Existing chapter SVG/PNG as layout template | Forces clone; kills creativity |
| Fletcher/code screenshots as “copy this” | Same |
| form ids / catalog shopping | Phase A is not Tech map |
| “Match our dual-lane SVG” | Use structure-transfer mode only if intentional |
| **Any unsupervised body/anatomy free vision (default)** | Human 2026-07-29: results often absurd / professionally embarrassing; pause |

## Body-related free vision: **paused** (default)

Until explicitly reopened (Human + **H-Gfx** or human-drawn gold):

1. **Do not** free-gen limbs, organ cuts, fascial loges, NV anatomy, “comic legs”, or atlas-lite cuts.  
2. Prefer **non-body** units: urgency, discrimination, mimic, cue tables, abstract process without body drawing.  
3. CES/MSCC/saddle-style spatial free vision = **only** if Human reopens H-Gfx path — not agent default.  
4. Record failed exploration under assets as **provenance demoted**, not winners.  
5. **Contralateral clinical compare** (e.g. CRPS hand vs Gegenseite) is still a **body graphic** — same pause unless H-Gfx or a proven non-body substitute (exam table / cue cluster) is chosen.

## Focus doctrine (CRPS 2026-07-31 harvest)

Defaults — override only with a written reason in `*.vision.md` / Decision Note:

| Default | Why | Flexible override |
|---|---|---|
| **One visual claim per free gen** | Multi-pin dashboards collapse into wrong laterality, arbitrary leaders, duplicates | Explicit multi-zone only if harvest + audit capacity is planned |
| **No labels / no leader callouts in free raster** | Text-in-image invents, garbles, and fakes precision | Single short pin only if Form Spec requires criteria-by-picture *and* audit is harsh |
| **Typst owns German claim text** | Maintainable, C-pin faithful | Hybrid labels-on-nodes after PASS composition |
| **Pretty ≠ ready** | First-glance polish failed expert textbook scrutiny | Human H-Explore / H-Gfx may still pass a PASS audit |

Negative gold: `domains/medical/briefs/kl-crps-2026-07-31.process-review.md` · assets `domains/medical/assets/kl-crps-2026-07-31/` (provenance only).

## Prompt layers

**Canonical craft + hard gate after gen:** [`prompt-and-semantic-read.md`](prompt-and-semantic-read.md)  
(short positive prompts; clinical context when in-situ; one claim per job; Semantic Read before Accept / optimum; same gate for CeTZ/SVG teaching glyphs; no scaling via negative word lists).

### Layer A — Free (default)

Keep prompts **short and concrete** (one subject you could photograph or draw). Prefer 1–3 short sentences over long kitchen-sink lists.

```text
[Concrete subject — e.g. irregular brown-black skin lesion / swollen MTP-I / face mouth droop].
[Simple textbook or clinical photo style if needed].
[White or plain background].
[DEFAULT: no text, no labels, no arrows-to-labels, no footer chrome in the image].
```

- ONE focused visual claim (no multi-pin dashboard).  
- Invent composition; do NOT copy repo layouts.  
- Do **not** rely on long “must not” catalogs in the prompt — fix quality with **clear want** + **jargon preflight** + **Semantic Read**.  
- Run **§1.1 pictorial-trigger preflight** before gen: process jargon (*atomic*, *cascade*, …) must be rewritten to unambiguous subject language (see prompt-and-semantic-read.md).

### Layer B — Refine (Phase B2 only)

```text
Layer A
+ book-visual-standards.md
+ surgical fixes (e.g. loop stays on 4a)
+ still no structure attach unless structure-transfer
```

### Layer T — Structure transfer (opt-in only)

```text
Attach SVG/PNG as layout template
→ brand remake / style match only — never default free test
```

## Caps

| Free gens per unit | 2 |
| Then | Media/Human picks direction or Phase B with current best |

## Post-gen: Semantic Read then claim audit (mandatory before accept-asset)

Free vision is **not** claim-safe by default. **Immediately after each gen** (before montage / Accept path):

0. **Semantic Read** ([prompt-and-semantic-read.md](prompt-and-semantic-read.md)): Lesart · Job-Fit · Falsche Lehre · Claim-Trennung. **FAIL → block** (regen or demote). Caption does not convert FAIL → PASS.  
1. Read every on-image German/English label against Content C / pilot pin table (if any text slipped in).  
2. **Reject accept-asset** if any invented numbers, vitals, doses, or English decorative stage titles.  
3. **Illustration-semantics** (even when label-free): laterality/side-compare role truth; leaders point at meaning; no same-hand palm/dorsum sold as contralateral; no arbitrary callout dots.  
4. Prefer `recreate` (Typst) when free chrome is good but labels/structure drift — recreate becomes claim SoT.  
5. English stage chrome (STOP / ASSESSMENT / …) → B2 refine or strip in recreate.  
6. **FAIL or expert-doubt → demote raster** and step down intensity (clinical table / code grammar) — **never** invent decorative placeholder “geometry theater” as a fake fix.  
7. Do **not** mark process complete / hand to Human as “done” while Semantic Read FAIL is open.

**Eval evidence (2026-07-22):** IV-4 free invented First-Look vitals gibberish → production = recreate only. III-5 free used English stage titles. II-1 free was claim-clean and genre-correct (framework OS, not emergency red wall).  
**CRPS 2026-07-31:** multi-pin labeled hands → laterality FAIL + arbitrary leaders; refine did not fix structure; blob demotion was worse; solid win = L3–L4 Seitenvergleich table.  
Full batch: `dist/spikes/graphics/_eval/eval-batch-2026-07-22.md`.

## Gold example (III-2 S4)

- Free: `primar-algorithmus-raster-nanobanana-free.png` (+ brief `antigravity-nanobanana-free-brief.md`)  
- Anti-pattern for creativity tests: structure-referenced `…-nanobanana.png` (SVG remake)
