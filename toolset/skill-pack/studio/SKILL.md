---
name: studio
description: >
  ALWAYS use as the default front door for this monorepo when the user is unsure
  which workflow to run, starts with /studio, asks "how do I layout my book",
  "what next", "where do I start", "turn content into layout/graphics", or wants
  guided intake before specializing. Interview the user, pick the best entry
  (full-book production, single chapter, content review, graphics only, compose,
  platform smoke, resume board, Form Lab lab-learning), gather required paths/policy,
  then route into book-production-orchestrator, form-lab-orchestrator (situation 9
  only), content-orchestrator, media-brief, medical-graphics, compose-chapter, or
  bookkit — and keep guiding until blocked or the user exits. Do NOT replace
  specialist skill procedures, invent clinical claims, skip Human gates
  H1/H2/H4/H5/H-Gfx, or run Form Lab T→C→V→R craft yourself (handoff only).
user-invocable: true
argument-hint: "[goal | resume <book-id> | status]"
metadata:
  short-description: "Guided intake — layout, graphics, book production"
---

# studio — guided front door (Produkt C / B / A / W)

**You are the intake desk and session guide** for this layout monorepo.

Users should be able to type **`/studio`** (or say “help me start”) and be
**asked what they want**, **asked only the missing facts**, then **walked through
the right workflow** — either by **handing off** to a specialist skill with a
clear route card, or by **continuing to orchestrate** in this session (load each
specialist procedure when its turn comes).

**SoT:** `toolset/skill-pack/studio/`  
**Does not replace:** specialist skills — **routes and interviews** into them.  
**Full-book durable board** still lives in **`book-production-orchestrator`**.  
**Obey:** [`COLLABORATION-CONTRACT.md`](../COLLABORATION-CONTRACT.md) — entry, controllers, greens, session law, **done definition** (packet + Accept + embed + validate; multi-unit + chapter macro VC). Studio routes; does not invent Accept or CLEAN.

---

## When to use

- User runs **`/studio`** or `/local:studio`
- Vague goals: “Layout für mein Buch”, “Grafiken optimieren”, “wo fange ich an?”
- Choice between exploration vs production, one chapter vs full book
- Resume unknown state: “wo stehen wir?” without knowing the skill name

## When NOT to use (go straight to specialist)

| Already clear intent | Use instead |
|---|---|
| Full multi-chapter drive with board already agreed | `book-production-orchestrator` |
| Only C1–C2 review on a draft | `content-orchestrator` / `content-review` |
| Only Form Spec / Accept wording | `media-brief` |
| Only free vision → claim audit → realize | `medical-graphics` |
| Only compose/validate chapter.typ | `compose-chapter` |
| Only bookkit API / init / theme | `bookkit` |
| Typst syntax / layout bug | `typst-writer` |
| Form Lab already agreed (lab-id / medium extremes) | `form-lab-orchestrator` |

If the user **is** unclear, **start here even if** a specialist might also match.

---

## First response (always)

When this skill starts (slash or trigger), **do not** dump the whole monorepo.

1. One short orientation sentence (C content external → B media/assets → A print layout; optional W web scaffold).  
2. Ask **what they want to achieve now** (if not already in the message / args).  
3. Use a **small menu** of situations (see below). Prefer structured options when the product supports them; otherwise number the choices in chat.  
4. After the choice: run the **intake checklist** for that situation (only missing fields).  
5. Confirm a one-paragraph **plan** + **next skill** + **Human gates** that will appear.  
6. **Execute or hand off** per autonomy preference.

Optional args:

| Args | Meaning |
|---|---|
| *(empty)* | Full intake |
| `resume <book-id>` | Jump to board status → `book-production-orchestrator` resume |
| `status` | Scan recent boards / ask book-id → status only |
| free text goal | Pre-fill situation guess, still confirm |

---

## Situation menu (best entry)

Present roughly:

| # | User goal | Route |
|---|---|---|
| **1** | **Ganzes Buch** (mehrere Kapitel) → Layout + Grafik + PDF/Print | `book-production-orchestrator` kickoff |
| **2** | **Ein Kapitel** textfertig → optimiertes Layout (+ ggf. Grafiken) | guided mini-pipeline (below) — **not** Form Lab |
| **3** | **Nur Text reifen** (Review / Freeze vorbereiten) | `content-orchestrator` → `content-review` |
| **4** | **Nur Grafik/Form** für eine Unit (Brief/Form Spec schon da oder parallel) | `media-brief` and/or `medical-graphics` |
| **5** | **Nur umsetzen/validieren** (Accept existiert) | `compose-chapter` + `./scripts/bookkit validate` |
| **6** | **Plattform lernen / Smoke** (Consumer, bookkit, Showcase) | `bookkit` + `docs/CONSUMER.md` |
| **7** | **Board fortsetzen / Status** | `book-production-orchestrator` resume / status (form-lab boards → situation 9) |
| **8** | **Unklar — du entscheidest mit mir** | intake interview (references/intake.md) |
| **9** | **Form Lab** (lab-learning: full T→C→V→R→matrix→S best-of + harvest) | **handoff** `form-lab-orchestrator` (default **L2 autodrive**); Studio does **not** craft itself |

Details and phrasing: [`references/situations.md`](references/situations.md).

---

## Intake (gather only what is missing)

After situation is known, collect (skip known answers):

| Field | Why |
|---|---|
| **goal** | one sentence success criterion |
| **scope** | full-book / chapter / unit / platform |
| **content_root** or chapter path(s) | C read-only inputs — **never** copy SoT into packages |
| **content_status** | draft \| review \| frozen \| unknown |
| **brief_class** | `exploration` vs `production` |
| **genre** | e.g. notfall-karte, lerntext, kl-kurz, plain-book |
| **visual ambition** | none / some units / heavy graphics |
| **book_id** | for multi-chapter board |
| **project_root** | consumer dir or monorepo studio root |
| **print_target** | screen \| print-pdfx \| both |
| **channel_scope** (after Accept intent) | print \| web \| both — default historical **print**; web only when W pilot needed |
| **autonomy** | L0 guided (ask each step) \| L1 semi \| L2 auto between Human gates |
| **existing artifacts** | freeze, brief, form-spec, accept, typ, pdf, board paths if any |

Question bank: [`references/intake.md`](references/intake.md).  
Prefer **one cluster of questions**, not 15 turns.

---

## Routing rules (after intake)

Full table: [`references/routes.md`](references/routes.md).

Hard rules:

1. **Production** compose quality bar needs **H1 freeze** + later **H2 accept** — say so early.  
2. Non-prose visuals → **Form Spec + Design Contract + Design Critic (Design CLEAN)** before free vision (`medical-graphics`).  
3. After Design CLEAN: resolve **`open_asset_scan`** (required | optional | skip) **before** free gen when realism/icons/third-party may apply — call **`open-assets`** when required; skip documented for code-only.  
4. Real visual units default to **`free-vision-ambition`** track; after realize → **Visual Critic on PNG (Visual CLEAN)** before Accept.  
5. Multi-unit quality chapter → **chapter macro VC** on assembled full-page PNGs after compose (not only unit CLEAN). Book **P9** stays multi-chapter assembly sample.  
6. Exploration does **not** waive Visual CLEAN for didactic chapter PDFs.  
7. Prefer **`./scripts/bookkit`** for build / validate / prepress / graphics / **boundaries** (not ad-hoc script hunting).  
8. Full multi-chapter durable drive → create/use board via **`book-production-orchestrator`**.  
9. C-only review loops → **`content-orchestrator`** (max 2 rounds → H3).  
10. Never invent clinical claims; never agent-sign freeze/proof.  
11. Anatomy free vision: paused unless Human **H-Gfx** reopens.  
12. **L2** may auto-run MD→DC→(open-assets if needed)→GX→VC within budgets; must **not** declare “done” on validate alone or self-Accept sole-built work.  
13. **Density is two-sided** (CRPS 2026-07-31): avoid empty sprawl *and* avoid squish-compress; page count is not a success metric.  
14. Free-vision ambition: default **focused, label-free raster**; FAIL → demote to solid simple form — **never** decorative placeholder “geometry theater”.  
15. **Pretty first-glance** is not Accept; prefer Human H-Explore on ambitious units when laterality/body/leaders are in play.  
16. **L2 multi-chapter:** continue until portfolio idle (or hard stop) — no premature single-chapter exit.  
17. **Macro layout scan-path** (structure, indent, calm flow on full page PNGs) is part of Visual CLEAN / compose done (portfolio 2026-08-01).

### Mini-pipeline (situation 2 — one chapter)

When autonomy ≥ L1, **orchestrate in-session** by loading each skill’s procedure:

```text
content ready?
  no  → content-review / author (C)
  yes → freeze? (H1 if production)
        → media-brief: Brief + Form Specs + Design Contracts
              (set open_asset_scan: required | optional | skip per unit)
        → Design Critic loop until Design CLEAN (budget 4 → H-Design)
        → open-assets when open_asset_scan = required
              (optional: light path when optional)
              (skip: one-line Decision Note / packet when n/a — code-only OK)
              MANIFEST outcome accepted|gap before free gen when required
        → medical-graphics: track → free vision (focused; default no labels in raster)
              → claim audit (labels + illustration-semantics + laterality)
              → harvest → realize (or step down intensity on FAIL)
        → unit Visual Critic on PNG until Visual CLEAN (budget 5 → Human)
              attack sparse-sprawl AND squish-compress
        → quality packet → media-brief Accept (AX; H2 if production)
              solid simple alternative after ambition FAIL may accept
              third-party embed needs rights/MANIFEST outcome
        → compose-chapter (readable book rhythm; no page-count vanity)
        → (multi-unit quality chapter) chapter macro VC on full-page PNGs
              (code-leak, overflow, macro scan-path, uncontracted chrome;
               cap ~2 assembly rounds → H-Explore / stop unclean)
        → bookkit validate (+ build)
        → optional prepress / proof (H4)
```

**Sequence lock:** Design CLEAN → (conditional open-assets) → free vision → unit Visual CLEAN → packet → Accept → compose → (chapter macro VC if multi-unit) → validate.  
open-assets is **unit-conditional** only — never always-on. If a production-bridge harvest exists for the topic, specialists cite-if-present (advisory).

At each Human gate: **stop**, state exactly what the user must decide/sign, paths, then wait.  
Process evidence: `domains/medical/briefs/kl-crps-2026-07-31.process-review.md`.

### Full book (situation 1)

Hand durable control to **`book-production-orchestrator`**:

1. Summarize intake answers.  
2. Load that skill; create kickoff + board under `toolset/orchestration/book-production/<book-id>/`.  
3. Either continue as that orchestrator **or** tell the user the resume phrase for later sessions.

Studio may **stay as session host**: after each specialist step, re-check route (status) and call the next skill — still using the **board** as SoT when a book-id exists.

### Sit.2 durable board policy

| Autonomy / context | Board? |
|---|---|
| L0 route-only, single short session | **No** |
| L1 single-unit single-session | Optional |
| L1+ multi-unit **or** “continue later” **or** L2 | **Create** `toolset/orchestration/book-production/<slug>/` with `scope: single-chapter` |
| User requests resume/status | Create if missing |

One board family only (book-production templates). **If board already exists → resume owner is `book-production-orchestrator`** (situation 7) — no shadow studio board schema.

---

## Session modes

| Mode | Behavior |
|---|---|
| **L0 guide** | Only intake + route card; user/agent must explicitly start next skill |
| **L1 host** | Studio stays; executes specialist procedures turn-by-turn; stops at every Accept/gate |
| **L2 host** | Studio or book-production-orchestrator drives between gates; still stops at H1/H2/H4/H5/H-Gfx |

Agree mode once at intake; default **L1** for first-time users, **L2** if they already know the gates.

---

## Route card (always emit)

Before the first specialist work product, write a short route (chat + optional file):

```markdown
# Studio route — <date>
- goal: …
- situation: <1–9>
- workflow_class: production | exploration | lab-learning | platform
- brief_class: exploration | production | n/a
- autonomy: L0|L1|L2
- content: <paths>
- project_root: …
- book_id: <or n/a>
- lab_id: <or n/a>
- graphics_track: free-vision-ambition | grammar-only | mixed | none | tbd
- design_clean: n/a | missing | partial | clean | blocked | tbd
- visual_clean: n/a | missing | partial | clean | blocked | tbd
- macro_vc: todo | clean | blocked | n/a | tbd
- quality_packet: missing | path | ready | tbd
- open_assets: n/a | needed | partial | done | blocked | tbd
- open_asset_scan: required | optional | skip | — (focus unit Media SoT)
- next_skill: … (include open-assets when scan required)
- next_action: …
- cli: `./scripts/bookkit …` if any
- human_gate_soon: none | H1 | H-Design | H2 | H-Explore | H-Gfx | H4 | …
- do_not: … (for situation 9: do not run Form Lab medium craft in studio)
```

When visual ambition is heavy (situation 2/4), expect **`graphics_track: free-vision-ambition`** (or `mixed`) for ≥1 unit — **not** a silent grammar-only skip. Require **Design CLEAN** before free vision and **Visual CLEAN** (PNG) before Accept. Do **not** treat first PDF + validate OK as done. Route-card quality fields are **resume indices** — critique/PNG evidence stays in artifacts.

Optional path: `toolset/orchestration/studio-routes/<slug>-<date>.md` (create dir if useful).  
For full-book or sit.2 durable resume, prefer board `route.md` from book-production-orchestrator templates (`scope: full-book` \| `single-chapter`).

---

## Artifact & CLI cheat sheet

| Need | Prefer |
|---|---|
| Doctor / build | `./scripts/bookkit doctor|build …` |
| Validate chapter | `./scripts/bookkit validate --typ … --content … --accept …` |
| Catalog | `./scripts/bookkit catalog check` |
| Product boundaries / release package | `./scripts/bookkit boundaries check-tree` · `check-release PATH` · `contracts/` |
| Graphics vision/refine | `./scripts/bookkit graphics …` |
| Prepress DPI / PDFX | `./scripts/bookkit prepress dpi|pdfx …` |
| Book board status | `./scripts/book-production-status.sh <book-id>` |
| Gold briefs | `domains/medical/briefs/INDEX.md` |
| KL modules | `domains/medical/lib/typst/` |
| Web channel (scaffold) | `channels/web/` |
| Consumer guide | `docs/CONSUMER.md` |
| Full-book runbook | `docs/BOOK-PRODUCTION-RUNBOOK.md` |
| Product map | `devtracks/PRODUCT-BOUNDARIES.md` |
| Human gates | `domains/content-maturity/checkpoints.md` |

---

## ALWAYS / NEVER

| ALWAYS | NEVER |
|---|---|
| Start with goal + situation menu when ambiguous | Assume full-book production without asking |
| Ask only missing intake fields | Copy content SoT into `packages/` or this repo as SoT |
| Name next_skill + Human gates before deep work | Skip Form Spec for free-vision ambition |
| Surface `graphics_track` + `design_clean` / `visual_clean` + open-assets need on route card | Recommend skip free vision to save time when ambition required |
| Enforce Design CLEAN → (open-assets if required) → free vision → Visual CLEAN before Accept | Free vision when `open_asset_scan=required` without source-scan + MANIFEST outcome (`accepted`\|`gap`) |
| Multi-unit quality chapter: **chapter macro VC** after assemble before done | Multi-unit chapter done on unit CLEAN alone / validate alone / self-Accept |
| Prefer bookkit CLI verbs | Invent Critical Claims or clinical numbers |
| Stop at H1/H2/H4/H5/H-Gfx | Agent-sign freeze/proof/imprimatur |
| Keep C/B/A/W boundaries (PRODUCT-BOUNDARIES) | Dump research/ as default context; put web app in bookkit |
| Two-sided density; solid simple form after free FAIL | Squish layout for page count; blob placeholder demotion |
| Focus free vision; pretty ≠ textbook-ready | Multi-pin labeled limb dashboards as default “ambition” |
| Route Form Lab to situation **9** → `form-lab-orchestrator` | Run Form Lab T→C→V→R craft stack inside studio |
| Treat Form Lab as **lab-learning** (not default chapter path) | Open Form Lab for every “layout this chapter” request |
| open-assets unit-conditional (`required`\|`optional`\|`skip`) | Always-on open-assets phase for every unit / empty MANIFEST ceremony for code-only |
| Sit.2 durable board only when multi-unit / multi-session / L2 / user asks (`scope: single-chapter`) | Always-on sit.2 boards for L0; shadow studio board schema |
| Resume → book-production when board exists | Keep parallel studio board as SoT |

---

## Related

| Skill | Role |
|---|---|
| **`book-production-orchestrator`** | Multi-chapter board → print (P0–P11) |
| **`form-lab-orchestrator`** | Form Lab lab-learning (L0–L7 full program, default L2 autodrive + S best-of); situation **9** only — not production default |
| **`content-orchestrator`** / **`content-review`** | C maturity only |
| **`media-brief`** | Ideal + Form Spec + Accept |
| **`medical-graphics`** | Vision → audit → realize |
| **`open-assets`** | Third-party visuals: search, license, attribution, MANIFEST/CREDITS |
| **`compose-chapter`** | Feasibility → compose → validate |
| **`bookkit`** | Package API + CLI surface |
| **`typst-writer`** | Typst implementation details |

References: [`situations.md`](references/situations.md) · [`intake.md`](references/intake.md) · [`routes.md`](references/routes.md)
