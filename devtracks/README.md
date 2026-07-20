Devtracks organize how new features, functions or complex documents are developed. They are a way to structure the development process and to keep track of the progress. Each devtrack focuses on a specific aspect of the project, such as layout, graphics, or didactics. This allows for a more efficient and organized development process, as well as better communication among team members.

Devtracks follow spec-driven development, which means that the development process is guided by specifications and requirements. This ensures that the final product meets the needs of the users and stakeholders. The devtracks are designed to be flexible and adaptable, allowing for changes and adjustments as needed throughout the development process.

Every devtrack contains at least:
- spec.md
- plan.md

Plan.md typically describes different phases of the development process. For a simple feature the plan.md is enough. More complex devtracks should be split into multiple phaseX.md files, which are then linked from the main plan.md. This allows for a more detailed and organized development process, as well as better tracking of progress and milestones. Each phase can focus on specific tasks and deliverables, making it easier to manage the development process and ensure that all requirements are met.

## Lifecycle: devtracks are working memory, skills are long-term memory

A devtrack holds **forward-looking work only**. It is *not* a place to permanently document
completed work or learnings — those belong in skills (`.github/skills/`) and guides (`Guides/`).
The full system is described in `docs/KNOWLEDGE-MAP.md`. A track moves through:

1. **Open** — create `devtracks/<name>/` with `spec.md` + `plan.md`. Active work only.
2. **Build** — phases, debug subdirs and scratch tools may live here; it is allowed to be messy.
3. **Harvest (the gate)** — when the work is complete, before archiving, extract every durable
   learning and route it:
   - reusable rule / gotcha → update the relevant **skill** (via the `skill-creator` skill);
   - long-form "why" / narrative → append to the relevant **guide**
     (`Guides/Working_With_Typst-Theory_To_Practice.md` is the canonical lessons-learned ledger);
   - add a `## Harvested into` footer to this track's `plan.md` listing the exact skill/guide
     sections updated (this makes the gate auditable).
4. **Archive** — `git mv devtracks/<name> devtracks/_archive/<name>`. The archived folder is a
   frozen provenance record (the evidence behind a skill's rules); it is never read for guidance
   and almost never deleted.

`devtracks/_archive/` therefore contains finished tracks; the top level of `devtracks/` contains
only tracks with open work (plus durable governance docs that are not “feature tracks”).

## Governance docs (stay at `devtracks/` root)

| Doc | Zweck |
|---|---|
| [`ORCHESTRATION.md`](ORCHESTRATION.md) | Implementierungs-Orchestrierung (Waves, Reviews, E1–E12) — **complete 2026-07-20** |
| [`CONSENSUS-v0.md`](CONSENSUS-v0.md) | Rollen, Workflow, ADR |
| [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md) | Produkte A/B/C, Repo-Schnitt, Interfaces |
| [`ROLES-AND-FLOW.md`](ROLES-AND-FLOW.md) | Rollen-Kurzform |
| [`_orchestration/`](_orchestration/) | Board, audits (runtime notes) |

## Open tracks

| Track | Product | Path | Focus |
|---|---|---|---|
| **content-maturity** | **C** (process; transitional in monorepo) | [`content-maturity/`](content-maturity/) | Content-Reife-Schleife C0–C5: Review, Freeze, Proof, Imprimatur — split-ready to Content-Werk |

Runtime products (not tracks):

| Product | Path |
|---|---|
| **A** form-catalog / compose / bookkit | `toolset/form-catalog/`, `toolset/compose/`, `packages/bookkit*` |
| **B** medical media | `domains/medical/` |
| **C** content + editorial process | external SoT (e.g. Kursbuch); process kit transitional: `domains/content-maturity/` |

**Flow (target v0.3):** Content draft (C) → **Content-Review / Freeze (C)** → Media Brief (B) → Feasibility/Spike (A) → Accept (B) → Compose/Validate (A) → **Proof / Imprimatur (C)** → Print (A).

**Consumer guide:** [`docs/CONSUMER.md`](../docs/CONSUMER.md).  
**Pilot dogfood:** `pilots/kursbuch-welle-03-compose/`.

**Recently archived (v0.2):** `form-catalog`, `media-design`, `compose-pipeline`, `platform-boundaries` under `_archive/`.  
Earlier: `typst-toolset`, `skill-eval-baseline`, `skill-reuse-pilot`, `prepress-pdfx`, …
