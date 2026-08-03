# Free-gen prompt craft + Semantic Read (hard gate)

**SoT** for how agents write free-vision / Pass-R aspect prompts, how they draw **vector / CeTZ teaching glyphs**, and how they **must** reject bad pictures **before** Accept, medium-optimum, matrix winner status, or Human handoff.

Applies to:

| Carrier | When |
|---|---|
| Free-vision / Pass **R** rasters | production + Form Lab |
| Pass **V** vector schemas, CeTZ, SVG pictograms | Form Lab + any Typst teaching glyph |
| Any teaching mark in Pass **S** / production chapter | before ship |
| Full-page Visual Critic | re-check every embedded teaching image/glyph |

Does **not** rely on stuffing “don’t draw X” lists into the image prompt — those do not scale.  
**Does** require a **pre-gen language check** for free gen (§1.1) and a **post-draw Semantic Read** for every teaching mark — **including** tiny vector doodles.

---

## 1. Prompt craft (positive, short, focused) — free gen / Pass R

### Doctrine

| Do | Do not |
|---|---|
| **One subject** per gen (one lesion, one joint, one face asymmetry) | Multi-job dashboards (“FAST + time + cascade + …”) |
| Name a **photographable / drawable thing** | Rely on abstract concept words alone (“Zeitfenster”, “System”, “Kaskade”, “Urgency”) |
| **Short** prompt (≈1–3 short sentences) | Long kitchen-sink prompts (often worse) |
| State the **learner job** in plain language | Confuse UI design colors with clinical meaning |
| Prefer **clinical context** when it teaches (skin field, body part) | Freestanding “sticker” cutouts when the job is *in situ* gestalt |
| White / clean background when montage later *and* subject still clinical | Design-system teal/amber as “semantic” for skin/lesion |
| Default: **no text in image** | Encoded A–E rainbow chrome *as if* that were ABCDE “Color” |
| **Unambiguous picture language** only (after §1.1 preflight) | Process jargon that triggers wrong motifs (e.g. “atomic”) |

### Recommended shape

```text
[Concrete subject in clinical context if needed]. [Optional: simple textbook / clinical photo style].
[Background: plain / white / or natural skin field]. [No labels / no text in the image].
```

**Examples (good):**

- `Irregular brown-black pigmented skin lesion on fair skin field, natural melanin tones, clinical photo style, no text.`
- `Close-up of red hives on human forearm skin, clinical photo style, white background, no text.`
- `Adult face with left mouth corner droop at rest, simple medical textbook line illustration, white background, no text.`
- `Swollen red big-toe joint (MTP-I), clinical textbook style, white background, no text.`

**Examples (bad — confuse the model or the learner):**

- `Medical icon urgency time window last seen normal teal red clinical education` → abstract “science” icons  
- `Multi-system cascade skin airway heart icons pathway` → random infographic arcs  
- `ABCDE multicolored colorful lesion criteria set` → rainbow UI, not melanin  
- `Atomic FAST time icon` / `atomic medical aspect` → **physics atoms / Bohr models** (jargon leak)
- Lesion freestanding on pure white with no skin field when job is *spot the lesion on skin* → sticker gestalt

### One aspect per learner job (redundancy ban)

| Rule | Detail |
|---|---|
| **One primary teaching image per job** | FAST Face → **one** best face-droop, not face + grimace + face-glyph stack |
| Second image for same job | Only if it teaches a **distinct** sub-cue (e.g. arm drift ≠ face) |
| Speech / mouth | Must read as **speech difficulty or facial droop**, not generic grimace / shout |
| Pass S | Prefer the **single strongest** aspect for that job; drop co-winners that only repeat |

### Naming (language hygiene)

| Internal (OK) | Learner-facing / captions | Image-prompt language |
|---|---|---|
| `atom_id` in Design Contract | **Aspekt**, **Kachel**, **Gestalt** — not “Atom T” | Never put `atom` / `atomic` in the gen prompt |
| Form Lab “raster atomic” (medium name) | Do not label figures “Atom” | Describe the **subject** only (toe joint, face, lesion) |

---

## 1.1 Preflight: missverständliche Schlagwörter (bildhafte Trigger)

**Problem:** Agent- und Form-Lab-Jargon ist oft *metaphorisch* (“atomic” = klar begrenzt, ein Detail). Bild-KIs lesen dieselben Wörter *wörtlich als Bildinhalt* und malen Atome, Kaskaden-Infografiken, Science-Icons.

**Pflicht vor jedem Gen:** Draft prompt einmal scannen. Jedes Wort mit **starker alternativer Bildbedeutung** → **ersetzen** durch unmissverständliche, nicht-bildhafte Formulierung des Gemeinten.  
Das ist **kein** Negativkatalog im Prompt an die KI, sondern ein **Agent-seitiger Rewrite** vor dem API/UI-Call.

### Preflight procedure (every gen)

```text
1. Write short draft prompt (what we want the learner to see).
2. Scan for process jargon / abstract metaphors / dual-meaning words.
3. For each hit: rewrite to concrete subject language (what would a camera show?).
4. Prefer clinical context when the job is in-situ gestalt (skin field, joint on foot, face on person).
5. Re-read the whole prompt as if you were the image model (literal).
6. Only then call free-gen / Imagine / Nano Banana.
```

If step 5 still could mean a wrong picture, rewrite again — **do not gen yet**.

### Seed rewrite map (extend when a new fail appears)

Process / dual-meaning words that **must not** enter the image prompt as-is.  
Keep this table **short**; add a row when production or Form Lab produces a documented pictorial misfire.  
**Do not** paste “don’t draw atoms” into the image prompt — just **don’t say atomic**.

| Risky word / phrase (often agent intent) | Typical wrong picture | Prefer in image prompt |
|---|---|---|
| **atomic**, **atom**, atom montage, atom T/F | Bohr atom, nucleus, orbitals | omit; say the **subject** only (“one swollen big-toe joint”) |
| **cascade**, **pathway** (as metaphor) | Infographic arcs, process diagrams | “hives on skin” / “swollen lips” separately — one subject per gen |
| **system**, multi-system (alone) | abstract network / molecule art | name organs or skin findings one at a time |
| **urgency**, **time window**, **last seen normal** (alone) | clocks as science icons, random timers | “simple wristwatch” **only if** that is truly the teaching motif; else skip raster |
| **icon**, **pictogram**, **glyph** (heavy) | generic app/science icons | describe the real-world thing, not “an icon of …” |
| **molecular**, **particle**, **nuclear** | lab/physics imagery | clinical subject in plain language |
| **scope** (as unit name) | telescope / abstract rings | “who treats what” stays **text**; no free gen of “scope” |
| **frame → danger** (process) | random arrows/frames | two separate gens or pure Typst chrome |
| **peel**, **dashboard** (process) | product UI chrome | concrete clinical layout intent in Typst, not free gen jargon |
| **Color** / **multicolor** for ABCDE-C | rainbow palette | “several brown and black tones in one lesion” |
| **FAST** as prompt subject | random letter collage | four gens: face droop / arm drift / … each concrete |
| **aspect** (English) | sometimes odd composites | “single close-up of …” |

**Intent “klar begrenzt und fokussiert”** is expressed by **prompt shape** (one subject, close-up, only), **not** by the word *atomic*.

### Worked rewrite (Form Lab lesson)

| Draft (leaked jargon) | After preflight |
|---|---|
| `Atomic medical icon for stroke time / urgency, clinical education style` | `Simple wristwatch on white background, medical textbook illustration, no other symbols, no text` — **or** skip free gen and teach time in Typst only |
| `Atomic montage of anaphylaxis multi-system cascade` | Gen A: `Close-up of red hives on forearm…` · Gen B: `Swollen lips angioedema…` — never “atomic” or “cascade” in the prompt |

---

## 2. Semantic Read (hard gate) — rasters **and** vector glyphs

Wrong images **may** be generated or drawn. The process **must not finish** (no accept-asset, no medium-optimum, no matrix **winner** for that mark, no “ready for Human” as done) while a failed Semantic Read is open.

### When

| Moment | Required |
|---|---|
| After each free gen / Pass-R aspect | Open image → Semantic Read **before** montage |
| After each **new or revised** CeTZ / SVG / vector teaching glyph (Pass V, S, production) | Open page PNG (or isolated render) → same Semantic Read **before** promoting as recognition winner |
| Pass Critic / Visual Critic on full page | Re-run for **every** embedded teaching raster **and** vector mark |
| Comparison matrix | A medium may score high on a job **only if** its teaching marks for that job have Semantic Read **PASS** |

### The four questions (scalable — every chapter, every medium)

| # | Question | Fail if |
|---|---|---|
| **1 Lesart** | In ~2 seconds, **without caption**, what do I see? | Unclear / needs caption to guess the subject |
| **2 Job-Fit** | Is that the **intended learner job** (Face? Urtikaria? MTP-I hotspot? Ugly duckling among moles?)? | “Something medical” or abstract decoration that is not the job |
| **3 Falsche Lehre** | Could this teach a **wrong rule**? | e.g. abstract nucleus as “Time”; rainbow chips as ABCDE-C Color; invented cascade as pathophys fact; grimace as FAST speech |
| **4 Claim-Trennung** | Are diagnosis/triage claims **outside** the image (Typst)? | Image invents vitals, scores, EN stages, fake precision |

**Hard rule:** Caption or disclaimer **does not** convert FAIL → PASS.  
If the page needs “Vektor: Atemwegsödem-Glyph” for the learner to know what the red arcs mean → **FAIL Lesart**.  
“Looks cool” / “fits the grid” / “we needed a Pass V winner” **does not** pass.

### Extra checks for vector / CeTZ / SVG glyphs (Pass V and any schematic)

| Check | Fail if |
|---|---|
| **Thumbnail legibility** | At chapter size (~20–40 mm), anatomy or relation is not readable |
| **Concrete schema** | Mark is only decorative geometry (blob + red dot, two lines + arcs, smiley face, equal dots + one polygon) **without** legible clinical structure |
| **Caption dependency** | Learner would not get the job without the adjacent German explanation |
| **Redundancy with stronger R** | Same job already taught clearly by a raster — glyph adds no new cue (do not keep for medium balance) |

### Anti-doodle patterns (process FAIL — not a prompt negative list)

These are **agent-side reject patterns** after drawing. Documented Form Lab b-wave failures. Extend when a new class appears.

| Pattern | Typical “intent” | Why FAIL |
|---|---|---|
| Foot / body **blob outline + single red hotspot circle** | “hot joint location” | Not a readable foot/joint without caption |
| **Smiley / stick face** with crooked mouth line | “face asymmetry” | Cartoon; weak clinical gestalt |
| **Two parallel lines + red filled arcs** | “airway swell / cascade” | Abstract; looks random; not airway anatomy |
| **N equal circles + one odd polygon** alone | “ugly duckling” | Symbol only; no skin field / no real mole variety |
| Rainbow letter chips as clinical **Color** | ABCDE-C | UI hues ≠ melanin variety |
| Generic organ circles with labels only | “multi-system” | Flat text-in-circles; use chrome cards or real findings instead if schema is empty |

**Remedy:** redraw with **legible simplified anatomy** (recognizable foot + MTP region, face with true droop laterality, airway cross-section that reads as lumen narrow) **or demote** — teach that job in **type/chrome** or a **PASS raster**, not with a caption-rescued doodle.

### Verdict

| Verdict | Required action |
|---|---|
| **PASS** | May mount / refine / accept-asset / matrix-score as strong (other gates still apply) |
| **FAIL** | **Block** — do not ship. **Regen/redraw** **or** demote (code / type / drop aspect). Record as **block**, not nit |
| Residual only after **max gen/draw budget** | Document residual dossier; aspect **not** used in Pass S; **not** matrix winner for that job |

### Form Lab / PC status

- Semantic Read FAIL on any mounted aspect/glyph → critique status **`revise`** (or residual-at-max).  
- **`medium-optimum-candidate`** requires **zero** open Semantic Read blocks.  
- Pass **S** may only reuse aspects/glyphs with recorded **Semantic Read PASS**.  
- **Omit is a win:** if Pass R (or T/C) already covers a job strongly, Pass S **must not** force-include a weaker V glyph for “medium balance.”

### Production Visual CLEAN

- Visual Critic **auto-block** if Semantic Read FAIL on any shipped teaching raster **or** vector glyph.  
- Claim audit FAIL for illustration-semantics **includes** Semantic Read (this file).  
- **Decorative placeholder geometry** (colored blocks, empty ovals, caption-only “glyphs”) remains auto-block (see CRPS process harvest).

---

## 3. Comparison matrix scoring (Form Lab — generalizable)

Scores 1–5 must reflect **teaching power without caption**, not “medium has a mark for this job.”

| Rule | Detail |
|---|---|
| **Caption-dependent marks** | Max score **2** for that job (presence only), never 4–5 |
| **Semantic Read FAIL** | Score **1** or omit; **cannot** be matrix **winner** / co-winner |
| **Winner** | Only PASS marks that beat pure type **and** teach the job in ≤2s without label |
| **Co-winner** | Only if each co-winner adds a **distinct** cue (not face + face-glyph) |
| **Empty cell honesty** | Prefer “T wins with type” over inventing a weak V/R for completeness |

---

## 4. Pass S synthesis — omit is a win

| Allow | Deny |
|---|---|
| Import **strongest** PASS aspect per job | Stack face photo + grimace + smiley for one FAST Face job |
| Mix T body + C urgency + **one** R recognition | Force a V glyph because V was co-winner on paper but fails §2 |
| Drop an entire medium from S if it adds no teaching | “C+T+V+R winners only” as a layout quota |
| Prefer legible schema **or** photo, not both weak | Caption that explains what the doodle was *meant* to be |

**Synthesis question (every imported visual):**  
*If I crop the image and hide all German text, does the learner still get the clinical cue?*  
No → do not import.

---

## 5. Chrome vs clinical color (Pass C / ABCDE)

| Intent | Allowed |
|---|---|
| Layout hierarchy for letters A–E | Quiet same-family chrome **or** type weight only — **not** rainbow as if “Color” were UI colors |
| Clinical **C = Color** (pigment variety) | Show in a **lesion depiction** (brown/black/red-brown tones) or plain German text — never as five rainbow cards meaning “multicolor” |

---

## 6. Process placement

```text
── Free gen / Pass R ──────────────────────────────────────
Draft short prompt
  → §1.1 jargon / pictorial-trigger preflight
  → prefer clinical context when job is in-situ gestalt
  → Gen (only unambiguous picture language)
  → open image
  → Semantic Read (§2)     ← HARD GATE
  → PASS: harvest / mount
  → FAIL: regen or demote

── Vector / CeTZ / Pass V ─────────────────────────────────
Draft concrete schema (legible anatomy / relation)
  → draw
  → export / open PNG
  → Semantic Read (§2) + thumbnail + anti-doodle checks
  → PASS: may compete for matrix recognition jobs
  → FAIL: redraw or demote to type/chrome — not caption rescue

── Matrix ─────────────────────────────────────────────────
Score only caption-free teaching power (§3)
  → winners = PASS only

── Pass S / production ship ───────────────────────────────
Import strongest PASS per job (§4 omit-is-win)
  → full-page Visual Critic still runs density/scan/purity
  → only then Accept / medium-optimum / Human as complete
```

**Three layers of defense:**

1. **Pre-gen (raster):** no dual-meaning jargon; concrete subject; clinical context when needed.  
2. **Post-image (raster + vector):** Semantic Read — caption cannot save FAIL.  
3. **Selection (matrix + S):** score and import only what teaches; omit weak media.

---

## 7. Related

- Free vision: [`free-vision.md`](free-vision.md) · playbook [`../playbook/02-free-vision.md`](../playbook/02-free-vision.md)  
- Claim audit: [`../playbook/03-claim-audit.md`](../playbook/03-claim-audit.md)  
- Visual critique: [`../playbook/11-visual-critique.md`](../playbook/11-visual-critique.md)  
- Form Lab: `toolset/orchestration/form-lab/_templates/medium-rules-R.md` · `medium-rules-V.md` · `medium-rules-S.md` · `comparison-matrix.md` · `devtracks/_archive/chapter-form-lab/pass-craft-loop.md`
