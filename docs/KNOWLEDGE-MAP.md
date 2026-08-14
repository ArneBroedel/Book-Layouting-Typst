# Knowledge Map — how documentation works in this repo

This repo is two things at once: a **reproducible Typst book** *and* a **meta-workshop** that
distills hands-on Typst experience into reusable skills, guides, and tools so future projects move
faster. This document is the source of truth for **where knowledge lives and how it flows**.

> Guiding rule: **Devtracks are working memory, skills are long-term memory.**
> A development track is not "done" when the code works — it is done when its learnings have been
> *harvested* into a skill and/or guide and the track has been archived.

---

## Living knowledge layers

| Type | Lives in | Rule — "what goes here" |
|---|---|---|
| **Governance / conventions** | `CLAUDE.md` + `AGENTS.md` + this map | How to *work in this repo* (build, architecture, this system itself). Product boundaries SoT: `devtracks/PRODUCT-BOUNDARIES.md` v0.3.1. Roles/flow: `devtracks/ROLES-AND-FLOW.md`. |
| **Durable reference** (human, long-form) | `Guides/` | Stable Typst know-how + lessons-learned. The **why**. |
| **Executable skills** (agent-facing) | `.github/skills/` (Grok via `.grok/skills/` symlinks); platform SoT also under `toolset/skill-pack/` | Imperative procedures. The **what**. Routing: `AGENTS.md`. |
| **Product runtime** | `packages/bookkit`, `packages/bookkit-didactics`, `toolset/starter`, `scripts/bookkit` | Consumable layout product. Consumer guide: [`CONSUMER.md`](CONSUMER.md). Front door: skill **`studio`**. |
| **Active dev plans** | `devtracks/` | Spec/plan for work *not yet finished*. Nothing completed stays here. Index: `devtracks/README.md`. |
| **External / generated data** | `research/` (+ `templates/` as study corpus) | Script-generated ecosystem data and downloaded third-party material. **Not** default agent context. |

Each type has a distinct **audience** (human vs agent), **lifespan** (transient vs durable), and
**authorship** (curated vs generated). Mixing them is what caused the original confusion.

### Mapping to the raw → wiki → schema mental model

`research/` ≈ **raw** · `Guides/` ≈ **wiki** · `CLAUDE.md` / this map ≈ **schema**.
Skills are the executable distillation beside the wiki layer.

---

## Guides ↔ Skills — a boundary, not a merger

- A **skill** tells you *what to do*. Optimized for an agent loading minimal context. Keep them
  imperative and bounded — they must not absorb long prose.
- A **guide** tells you *why it works*. Optimized for a human (or an agent doing deep research).

When a skill needs to justify itself at length, it **links to a guide section** instead of inlining.
Cross-links are bidirectional: each `SKILL.md` carries a `Background:` footer; each guide carries an
`Encoded in skill:` header.

| Guide | Encoded in skill |
|---|---|
| `Working_With_Typst-Theory_To_Practice.md` (canonical lessons-learned ledger) | `typst-writer` |
| `Typst Extensibility.md` | `typst-extension` |
| `Pinit-Best-Practices.md` | `pinit-workflow` |
| `Medical-Presentation-Forms.md` (Form Spec, Design Contract, zones, claim pins) | `media-brief` + `medical-graphics` |
| `Medical-Graphics-Playbook.md` (free-first, claim audit, harvest, visual critique) | `medical-graphics` |
| Open third-party images (search, license, attribution, MANIFEST) | `open-assets` · policy `domains/medical/OPEN-ASSET-POLICY.md` |
| `KL-Form-Language.md` (illness-script grammar + ambition + transfer) | `media-brief` + `medical-graphics` |
| `docs/BOOK-PRODUCTION-RUNBOOK.md` (full book → print, board/resume) | `book-production-orchestrator` |
| Form Lab runtime README + harvest docs (lab-learning, not production default) | `form-lab-orchestrator` |

### Living SoT after harvest (do not read `_archive/` for guidance)

| Topic | Living SoT | Provenance (frozen) |
|---|---|---|
| KL form language | `Guides/KL-Form-Language.md` · ontology / form-space under `domains/medical/skill/media-brief/references/` · form library `domains/medical/skill/medical-graphics/references/kl-form-library.md` | `devtracks/_archive/kl-form-language/` |
| Skill collaboration / CLEAN authority | `toolset/skill-pack/COLLABORATION-CONTRACT.md` | `devtracks/skill-collaboration/` (index) · `_archive/{collab-control-plane,open-assets-production-wire,orchestration-quality-state,collab-wire-dogfood,quality-packet-soft-gate}/` |
| Design quality / CLEAN doctrine | `media-brief` + `medical-graphics` + templates | `_archive/design-quality-system/` |
| Chapter Form Lab | `form-lab-orchestrator` + `toolset/orchestration/form-lab/` · studio **9** | `_archive/chapter-form-lab/` |
| Multi-chapter explore | book-production-orchestrator multi-chapter ops | `_archive/multi-chapter-explore-layout/` |
| Free-vision harvest | `medical-graphics` harvest/proximity | `_archive/free-vision-harvest/` |
| Modular monorepo / split deferred | OWNERSHIP files + `bookkit boundaries` | `_archive/workspace-split/` · `_archive/workspace-inventory/` |

Soft quality-packet path check (WARN only): `./scripts/bookkit validate --quality-packet PATH`.

---

## The lifecycle — the Harvest gate

```
experience
  → devtracks/<name>/ (spec + plan, ACTIVE — allowed to be messy)
  → HARVEST on completion (the gate):
        · reusable rule / gotcha-avoidance   → update the relevant SKILL (via skill-creator)
        · long-form "why" / narrative        → append to the relevant GUIDE (lessons ledger)
        · add a "Harvested into:" footer to the track's plan.md (auditable)
  → devtracks/_archive/<name>/ (frozen provenance — evidence for why a skill says what it says)
```

### Skill quality after harvest

- Always: `python3 .github/skills/skill-creator/scripts/quick_validate.py <skill-dir>`
- Full graded baseline: `run_eval.py` when API keys available. Static fallback report:
  `devtracks/_archive/skill-eval-baseline/reports/static-baseline-2026-07-19.md`.

### Harvest checklist (run before archiving a completed track)

1. **Extract every durable learning** from the track's `spec.md`/`plan.md`/`phaseN.md`.
2. **Route each learning:**
   - Actionable "always/never" rule or gotcha → the matching **skill**.
   - Narrative "we hit X, root cause Y, fix Z" → **`Guides/Working_With_Typst-Theory_To_Practice.md`**.
3. **Use `skill-creator`** to draft and (for substantive changes) eval/grade the skill edits.
   - *Tiered rigor:* trivial gotcha additions = light skill edit + lint; substantive skill changes =
     full `skill-creator` eval/grading run (or documented static fallback if no API).
4. **Record provenance:** add a `## Harvested into` footer to the track's `plan.md`.
5. **Archive:** `git mv devtracks/<name> devtracks/_archive/<name>`. Never delete.

`devtracks/_archive/` is frozen history: nobody reads it for guidance, only for provenance.

---

## Runtime vs production runs vs lab (freeze rules)

The monorepo mixes **product code**, **shipping runs**, and **training/lab**. Keep them distinct so agents do not load Form Lab boards as default context.

| Layer | What | Where (living) | Agent default? |
|---|---|---|---|
| **Runtime** | bookkit, compose engine, CLI, contracts, skills, templates | `packages/`, `toolset/{boundaries,form-catalog,compose/{fixtures,tests,spikes,scripts},starter,skill-pack}`, `scripts/`, `contracts/`, domain `skill/` + `templates/` | **Yes** |
| **Production runs** | Full-book / chapter boards, Accept, compose dogfood, release pins | `toolset/orchestration/book-production/<book-id>/` (+ `release/<chapter_id>.yaml`), gold briefs top-level, `domains/medical/assets/<slug>/`, `toolset/compose/pilots/` (non-lab) | Only the **active** book-id / unit |
| **Lab / training** | Form Lab craft, medium extremes, harvest | `toolset/orchestration/form-lab/` (`_templates/`, living harvest portfolios, `_archive/`), `toolset/compose/lab/`, `domains/medical/assets/form-lab/` (path stable; lab-only) | **Only** studio situation **9** / form-lab-orchestrator |
| **Knowledge** | Guides, governance, active devtracks | `docs/`, `Guides/`, `devtracks/` (open + governance) | Governance yes; Guides on demand |
| **Outputs** | PDF/PNG | `dist/` (gitignored) — `form-lab/`, `pilots/`, `production/` by convention | **No** |
| **Research (R)** | Ecosystem survey | `research/`, `templates/` | **No** |

**Lab ≠ production:** Form Lab learns forms and harvests vocabulary/bridge; it is **not** the default chapter ship path (studio 1–2 / book-production).  
**Archive = navigation clarity**, not clone-size reduction (`git mv` keeps blobs).  
**Do not move** `domains/medical/assets/form-lab/` (Typst absolute mounts). Gold briefs stay **flat** top-level per `domains/medical/briefs/INDEX.md`; campaigns live under `briefs/_archive/`.

### Default agent load

| Load | Do not load |
|---|---|
| packages, toolset engine + skill-pack, contracts, scripts | `toolset/orchestration/form-lab/_archive/**` |
| Active `book-production/<id>/` when resuming | Mass `toolset/compose/lab/**` unless Form Lab |
| Gold briefs + `INDEX.md` | `briefs/_archive`, `_wave*`, `_explorations` unless needed |
| CANONICAL assets under `domains/medical/assets/<slug>/` | Full `assets/form-lab/**` unless Lab / Pass O |
| This map + skills for the task | `research/`, `templates/`, `dist/` |

### Artifact quick map

| Artifact | Path |
|---|---|
| Production board + run-log | `toolset/orchestration/book-production/<book-id>/` |
| Chapter release package | `…/<book-id>/release/<chapter_id>.yaml` (from `contracts/templates/chapter-release.template.yaml`) |
| Form Lab board / harvest | `toolset/orchestration/form-lab/` · living: `_templates/`, `portfolio-2026-08-c\|d` |
| Form Lab chapter.typ | `toolset/compose/lab/form-lab-*` |
| Production/dogfood chapter.typ | `toolset/compose/pilots/` or root `pilots/` (consumer dogfood) |
| Gold brief / Accept | `domains/medical/briefs/<unit>.*.md` (INDEX allowlist) |
| Shared contracts / tree check | `contracts/` · `./scripts/bookkit boundaries` |

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
- **Production board / release pin** → `toolset/orchestration/book-production/<book-id>/` (not Form Lab).
- **Form Lab run** → `toolset/orchestration/form-lab/<lab-id>/` + `toolset/compose/lab/` (not default production).
- **Campaign / dated brief copies** → `domains/medical/briefs/_archive/` (not top-level gold).

---

## Scope boundary — the cross-project LLM Wiki

A separate, **cross-project** knowledge initiative (a central Obsidian "LLM Wiki" à la Karpathy) is
tracked in the **OptimizeCopilot** repo, not here. This repo stays **self-contained**: its knowledge
is versioned with its code, and its skills are repo-local. If that wiki is ever adopted, this repo
*feeds* it as one project — it does not host it.
