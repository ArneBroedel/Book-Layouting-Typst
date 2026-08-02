# Free-gen prompt craft + Semantic Read (hard gate)

**SoT** for how agents write free-vision / Pass-R aspect prompts and how they **must** reject bad images **before** Accept, medium-optimum, or Human handoff.

Applies to: production free vision (`medical-graphics`) **and** Form Lab Pass R (and any free gen inside Pass S).  
Does **not** rely on stuffing “don’t draw X” lists into the image prompt — those do not scale.  
**Does** require a **pre-gen language check**: process jargon that the image model will take *literally as picture content* must be rewritten to plain, unambiguous subject language.

---

## 1. Prompt craft (positive, short, focused)

### Doctrine

| Do | Do not |
|---|---|
| **One subject** per gen (one lesion, one joint, one face asymmetry) | Multi-job dashboards (“FAST + time + cascade + …”) |
| Name a **photographable / drawable thing** | Rely on abstract concept words alone (“Zeitfenster”, “System”, “Kaskade”, “Urgency”) |
| **Short** prompt (≈1–3 short sentences) | Long kitchen-sink prompts (often worse) |
| State the **learner job** in plain language | Confuse UI design colors with clinical meaning |
| White / clean background when montage later | Design-system teal/amber as “semantic” for skin/lesion |
| Default: **no text in image** | Encoded A–E rainbow chrome *as if* that were ABCDE “Color” |
| **Unambiguous picture language** only (after §1.1 preflight) | Process jargon that triggers wrong motifs (e.g. “atomic”) |

### Recommended shape

```text
[Concrete subject]. [Optional: simple textbook / clinical photo style].
[Background: white / plain]. [No labels / no text in the image].
```

**Examples (good):**

- `Irregular brown-black pigmented skin lesion only, natural melanin tones, white background, no text.`
- `Close-up of red hives on human forearm skin, clinical photo style, white background, no text.`
- `Adult face with left mouth corner droop, simple medical textbook line illustration, white background, no text.`
- `Swollen red big-toe joint (MTP-I), clinical textbook style, white background, no text.`

**Examples (bad — confuse the model):**

- `Medical icon urgency time window last seen normal teal red clinical education` → abstract “science” icons  
- `Multi-system cascade skin airway heart icons pathway` → random infographic arcs  
- `ABCDE multicolored colorful lesion criteria set` → rainbow UI, not melanin  
- `Atomic FAST time icon` / `atomic medical aspect` → **physics atoms / Bohr models** (jargon leak)

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
4. Re-read the whole prompt as if you were the image model (literal).
5. Only then call free-gen / Imagine / Nano Banana.
```

If step 4 still could mean a wrong picture, rewrite again — **do not gen yet**.

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

## 2. Semantic Read (hard gate)

Wrong images **may** be generated. The process **must not finish** (no accept-asset, no medium-optimum, no “ready for Human” as done) while a failed Semantic Read is open.

### When

**Immediately after each free gen / Pass-R aspect gen**, **before** montage into chapter and **before** spending craft rounds polishing layout around a bad picture.

Also: Pass Critic / Visual Critic on **full page PNG** must re-run Semantic Read for every embedded raster/vector teaching glyph.

### The four questions (scalable — every chapter)

| # | Question | Fail if |
|---|---|---|
| **1 Lesart** | In ~2 seconds, without caption, what do I see? | Unclear / needs caption to guess the subject |
| **2 Job-Fit** | Is that the **intended learner job** (Face? Urtikaria? MTP-I?)? | “Something medical” that is not the job |
| **3 Falsche Lehre** | Could this teach a **wrong rule**? | e.g. abstract nucleus as “Time”; rainbow chips as ABCDE-C Color; invented cascade as pathophys fact |
| **4 Claim-Trennung** | Are diagnosis/triage claims **outside** the image (Typst)? | Image invents vitals, scores, EN stages, fake precision |

### Verdict

| Verdict | Required action |
|---|---|
| **PASS** | May mount / refine / accept-asset path (other gates still apply) |
| **FAIL** | **Block** — do not ship. **Regen** with a clearer short prompt **or** demote (code / type / drop aspect). Record in audit / critique as **block**, not nit |
| Residual only after **max gen budget** | Document residual dossier; aspect **not** used in Pass S winners; Human may still see as negative provenance |

**Hard rule:** Caption or disclaimer **does not** convert FAIL → PASS.  
“Looks cool” / “fits the grid” / “disclaimer in text” **does not** pass.

### Form Lab / PC status

- Semantic Read FAIL on any mounted aspect → critique status **`revise`** (or residual-at-max).  
- **`medium-optimum-candidate`** requires **zero** open Semantic Read blocks.  
- Pass **S** may only reuse aspects with recorded **Semantic Read PASS**.

### Production Visual CLEAN

- Visual Critic **auto-block** if Semantic Read FAIL on any shipped raster.  
- Claim audit FAIL for illustration-semantics **includes** Semantic Read (this file).

---

## 3. Chrome vs clinical color (Pass C / ABCDE)

| Intent | Allowed |
|---|---|
| Layout hierarchy for letters A–E | Quiet same-family chrome **or** type weight only — **not** rainbow as if “Color” were UI colors |
| Clinical **C = Color** (pigment variety) | Show in a **lesion depiction** (brown/black/red-brown tones) or plain German text — never as five rainbow cards meaning “multicolor” |

---

## 4. Process placement

```text
Draft short prompt
  → §1.1 jargon / pictorial-trigger preflight (rewrite ambiguous words)
  → Gen (only unambiguous picture language)
  → open image (must read)
  → Semantic Read (this file)     ← HARD GATE post-gen
  → PASS: harvest / mount / claim audit remainder
  → FAIL: regen (after another preflight) or demote — process not “done”
  → full-page Visual Critic / Form Lab PC still runs density/scan/medium purity
  → only then Accept / medium-optimum / Human handoff as complete
```

**Two layers of defense:**

1. **Pre-gen:** no dual-meaning jargon in the prompt (prevents many atom/cascade fails).  
2. **Post-gen:** Semantic Read still catches residual nonsense (process may still end only after clear).

---

## 5. Related

- Free vision: [`free-vision.md`](free-vision.md) · playbook [`../playbook/02-free-vision.md`](../playbook/02-free-vision.md)  
- Claim audit: [`../playbook/03-claim-audit.md`](../playbook/03-claim-audit.md)  
- Visual critique: [`../playbook/11-visual-critique.md`](../playbook/11-visual-critique.md)  
- Form Lab: `toolset/orchestration/form-lab/_templates/medium-rules-R.md` · `devtracks/chapter-form-lab/pass-craft-loop.md`
