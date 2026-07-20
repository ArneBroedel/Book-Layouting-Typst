# Knowledge Map — how documentation works in this repo

This repo is two things at once: a **reproducible Typst book** *and* a **meta-workshop** that
distills hands-on Typst experience into reusable skills, guides, and tools so future projects move
faster. This document is the single source of truth for **where knowledge lives and how it flows**.

> Guiding rule: **Devtracks are working memory, skills are long-term memory.**
> A development track is not "done" when the code works — it is done when its learnings have been
> *harvested* into a skill and/or guide and the track has been archived.

---

## The five knowledge types

| Type | Lives in | Rule — "what goes here" |
|---|---|---|
| **Governance / conventions** | `CLAUDE.md` + `AGENTS.md` + this `docs/KNOWLEDGE-MAP.md` | How to *work in this repo* (build, architecture, this system itself). The "schema" layer. |
| **Durable reference knowledge** (human, long-form) | `Guides/` | Stable Typst know-how + lessons-learned that a future project would want to read. The **why**. |
| **Executable skills** (agent-facing) | `.github/skills/` (Grok also via `.grok/skills/` symlinks); package skill SoT also under `toolset/skill-pack/` | Imperative procedures that change *what an agent does* in a domain. The **what**. |
| **Product runtime (toolset)** | `packages/bookkit`, `packages/bookkit-didactics`, `toolset/starter`, `scripts/bookkit` | Consumable layout product for other workspaces — not the showcase content tree. |
| **Forward-looking dev plans** (active only) | `devtracks/` | Spec/plan for work *not yet finished*. Nothing completed stays here — it is harvested and archived. |
| **Publishing-roles + boundaries (active)** | `CONSENSUS-v0`, `PRODUCT-BOUNDARIES`, `platform-boundaries`, `form-catalog`, `media-design`, `compose-pipeline` | A platform / B `domains/medical` / C external content; media brief → feasibility → accept → compose → validate. |
| **External / generated data** | `research/` (+ `templates/` as study corpus) | Script-generated ecosystem data and downloaded third-party material. Never hand-curated. |

Each type has a distinct **audience** (human vs Claude), **lifespan** (transient vs durable), and
**authorship** (curated vs generated). Mixing them is what caused the original confusion.

### Mapping to the raw → wiki → schema mental model
For reference, the layers map cleanly onto the classic knowledge-base triad:
`research/` ≈ **raw** (immutable inputs) · `Guides/` ≈ **wiki** (distilled, human-readable) ·
`CLAUDE.md`/`KNOWLEDGE-MAP.md` ≈ **schema** (the rules). Skills are the executable distillation that
sits beside the wiki layer.

---

## Guides ↔ Skills — a boundary, not a merger

- A **skill** tells you *what to do* ("when importing a `@preview` package, avoid the i-figured/subpar
  conflict by …"). Optimized for an agent loading minimal context before acting. Keep them imperative
  and bounded — they must not absorb long prose.
- A **guide** tells you *why it works* (the full layout model, every mistake and its root cause).
  Optimized for a human (or an agent doing deep research) building a mental model.

When a skill needs to justify itself at length, it **links to a guide section** instead of inlining.
Cross-links are bidirectional: each `SKILL.md` carries a `Background:` footer; each guide carries an
`Encoded in skill:` header.

| Guide | Encoded in skill |
|---|---|
| `Working_With_Typst-Theory_To_Practice.md` (canonical lessons-learned ledger) | `typst-writer` |
| `Typst Extensibility.md` | `typst-extension` |
| `Pinit-Best-Practices.md` | `pinit-workflow` |

---

## The lifecycle — the Harvest gate

```
experience
  → devtracks/<name>/ (spec + plan, ACTIVE — allowed to be messy)
  → HARVEST on completion (the gate):
        · reusable rule / gotcha-avoidance   → update the relevant SKILL (via skill-creator)
        · long-form "why" / narrative        → append to the relevant GUIDE (lessons ledger)
        · add a "Harvested into:" footer to the track's plan.md (auditable)
  → devtracks/_archive/<name>/ (frozen provenance record — evidence for why a skill says what it says)
```

### Skill quality after harvest

- Always: `python3 .github/skills/skill-creator/scripts/quick_validate.py <skill-dir>`
- Full graded baseline: `run_eval.py` when API keys available; store under
  `devtracks/skill-eval-baseline/reports/` (or archive after harvest). See static fallback report
  `static-baseline-2026-07-19.md` for the headless path.

### Harvest checklist (run before archiving a completed track)
1. **Extract every durable learning** from the track's `spec.md`/`plan.md`/`phaseN.md`.
2. **Route each learning:**
   - Actionable "always/never" rule or gotcha → the matching **skill** (`typst-writer`,
     `typst-extension`, `bookkit`, `pinit-workflow`).
   - Narrative "we hit X, root cause Y, fix Z" → **`Guides/Working_With_Typst-Theory_To_Practice.md`**.
3. **Use `skill-creator`** to draft and (for substantive changes) eval/grade the skill edits.
   - *Tiered rigor:* trivial gotcha additions = light skill edit + lint; substantive skill changes =
     full `skill-creator` eval/grading run (or documented static fallback if no API).
4. **Record provenance:** add a `## Harvested into` footer to the track's `plan.md` listing the exact
   skill/guide sections updated.
5. **Archive:** `git mv devtracks/<name> devtracks/_archive/<name>`. Never delete — the archived track
   is the evidence behind the skill's rules.

`devtracks/_archive/` is frozen history: nobody reads it for guidance, only for provenance.

---

## "Where do I put X?" — decision list

- **A rule that should change how an agent writes/fixes `.typ`** → a **skill** (`.github/skills/…`; Grok discovers via `.grok/skills/` symlinks).
- **A long explanation, theory, or a "mistake → fix" story** → a **guide** (`Guides/…`).
- **A plan for work not yet built** → a **devtrack** (`devtracks/<name>/spec.md` + `plan.md`).
- **A completed feature's learnings** → harvest into skill+guide, then `devtracks/_archive/`.
- **A script that fetches/derives ecosystem data, or its output** → `research/{pipeline,data}/`.
- **A downloaded third-party template/package for study** → `templates/` (external corpus; never edited).
- **A project-wide convention or build rule** → `CLAUDE.md` (one-liner) + here (full version).
- **A personal/agent working note** → Claude memory (`~/.claude/projects/.../memory/`). When it
  generalizes into a repeatable practice, **promote it into a skill** and keep the memory as a shortcut.

---

## Scope boundary — the cross-project LLM Wiki

A separate, **cross-project** knowledge initiative (a central Obsidian "LLM Wiki" à la Karpathy) is
tracked in the **OptimizeCopilot** repo, not here. This repo stays **self-contained**: its knowledge
is versioned with its code, and its skills are repo-local. If that wiki is ever adopted, this repo
*feeds* it as one project — it does not host it.
