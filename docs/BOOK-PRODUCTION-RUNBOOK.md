# Book Production Runbook

**From finished text content → print-ready PDF** (and optionally web), with durable state and a top-level orchestrator.

| | |
|---|---|
| **Orchestrator skill** | `book-production-orchestrator` |
| **Board SoT** | `toolset/orchestration/book-production/<book-id>/` |
| **Graphics steps** | `domains/medical/skill/medical-graphics/playbook/` |
| **Media / Form Spec** | `media-brief` + `Guides/Medical-Presentation-Forms.md` |
| **Checkpoints** | `domains/content-maturity/checkpoints.md` |
| **Product boundaries** | `devtracks/PRODUCT-BOUNDARIES.md` (C → B → A‖W) |
| **Release package** | `contracts/` · `./scripts/bookkit boundaries check-release` |

---

## How you are guided

| Question | Answer |
|---|---|
| **Where do I start if unsure?** | Slash **`/studio`** (skill `studio`) — intake menu, then routes here or to specialists |
| Who keeps the full-book overview? | **`book-production-orchestrator`** via `board.md` + `run-log.md` |
| Step-by-step inside graphics? | **medical-graphics** playbook 00–08 |
| Do I remember the whole flow? | **No** — ask *“status board &lt;book-id&gt;”* or *“what next?”* / `/studio status` |
| Fully autonomous? | **Yes at L2/L3**, stopping at Human gates |
| Text vs assets vs layout? | **C** freeze → **B** Accept (`channel_scope`) → **A** print and/or **W** web |
| Boundary health of monorepo? | `./scripts/bookkit boundaries check-tree` (also via `doctor` on studio root) |

---

## Start (paste to agent)

**Easiest (recommended):**

```text
/studio
```

Then answer the menu (full book / one chapter / content only / …). For a known full-book drive you can skip intake:

```text
Skill: book-production-orchestrator
Book production kickoff.
book_id: mein-kursbuch
content_root: <path to finished chapters>
brief_class: production
autonomy: L2
print_target: both
# optional later: web_target when W pilot exists; Accept channel_scope must match
Create kickoff + board, plan priorities with me, then drive until Human gate.
```

### Boundary / release package (machine checks)

```bash
./scripts/bookkit boundaries check-tree
# after Accept: copy contracts/templates/chapter-release.template.yaml → fill pins
./scripts/bookkit boundaries check-release path/to/<chapter>.release.yaml
```

### Resume after hours

```text
Resume book-production board mein-kursbuch autonomy L2.
Reconcile filesystem, update board, continue next ticks. Stop at Human gates.
```

### Status only

```text
book-production-orchestrator: status for mein-kursbuch
Where are we, what's next, any rollback?
```

```bash
./scripts/book-production-status.sh mein-kursbuch
```

---

## Phase checklist (book)

- [ ] **P0** Kickoff + autonomy charter  
- [ ] **P1** Design SoT (theme/fonts/assembly) once  
- [ ] **P2** Content freeze per production chapter (**H1**)  
- [ ] **P3** Media Brief + Form Specs (+ `open_asset_scan` per unit)  
- [ ] **P4** Graphics per unit: Design CLEAN → **conditional open-assets** (required\|optional\|skip) → free vision / realize → unit Visual CLEAN  
- [ ] **P5** Media Accept (**H2** production; rights/MANIFEST when asset carrier)  
- [ ] **P6** Compose chapters (embed winners; multi-unit → **chapter macro VC**)  
- [ ] **P7** Assemble full book PDF  
- [ ] **P8** Validate (claims/compile/UA)  
- [ ] **P9** Visual QA book-level (PNG + Must-see; multi-chapter sample)  
- [ ] **P10** Prepress (print/PDF-X/DPI)  
- [ ] **P11** Proof (**H4**) / Imprimatur (**H5**)  

---

## Artifact map

| Kind | Typical path |
|---|---|
| Board | `toolset/orchestration/book-production/<id>/board.md` |
| Run-log | `toolset/orchestration/book-production/<id>/run-log.md` |
| **Chapter release package** | `toolset/orchestration/book-production/<id>/release/<chapter_id>.yaml` (from `contracts/templates/chapter-release.template.yaml`; board cell `release_package_path`) |
| Form Spec | `domains/medical/briefs/<slug>.form-spec.md` (gold top-level; campaigns under `_archive/`) |
| Vision/Graphics/Accept | `domains/medical/briefs/<slug>.{vision,graphics,accept}.md` |
| Quality packet | B template under `domains/medical/templates/` + per-job path on board |
| Assets | `domains/medical/assets/<slug>/` (not form-lab unless Lab/Pass O) |
| Modules | `toolset/compose/spikes/graphics/<slug>/lib/` |
| Chapter typ (production dogfood) | `toolset/compose/pilots/…` or root `pilots/…` or consumer tree |
| Chapter typ (Form Lab only) | `toolset/compose/lab/form-lab-…` — **not** production default |
| Book PDF | `dist/book.pdf` or `dist/production/<id>/` |
| Print | `dist/book-print.pdf` |

**Lab ≠ production:** Form Lab boards live under `toolset/orchestration/form-lab/` (see `docs/KNOWLEDGE-MAP.md`). Do not use Form Lab paths as the default ship tree.

---

## Board field legend (resume index)

Board cells are **enums + paths only** — not critique text. Evidence lives in artifact trees. Full vocabulary: `toolset/skill-pack/book-production-orchestrator/templates/board.template.md`.

### Header / kickoff

| Field | Values |
|---|---|
| `scope` | `full-book` \| `single-chapter` \| `explore-portfolio` |
| `playbook_pin` | optional string (advisory) |
| `production_bridge` | path \| `—` (advisory; never Accept/CLEAN waive) |

### Chapter row (quality rollup)

| Field | Values |
|---|---|
| `design_clean` | `n/a` \| `missing` \| `partial` \| `clean` \| `blocked` |
| `visual_clean` | same |
| `macro_vc` | `todo` \| `clean` \| `blocked` \| `n/a` |
| `quality_packet` | `missing` \| path \| `ready` |
| `open_assets` | `n/a` \| `needed` \| `partial` \| `done` \| `blocked` |

Plus existing: content, brief, form_specs, graphics, accept, compose, pdf, next, notes.

### Unit row (detail)

| Field | Values |
|---|---|
| `design_clean` / `visual_clean` | missing \| partial \| clean \| blocked \| n/a |
| `needs_open_assets` | yes \| no |
| `open_assets` | n/a \| needed \| scanning \| manifest_ok \| blocked |
| `manifest_path` | path \| `—` |

Media SoT flag (Form Spec / Design Contract): `open_asset_scan: required | optional | skip`.

### Chapter done (board-gated)

```text
design_clean = clean|n/a · visual_clean OK where graphics · macro_vc = clean|n/a
quality_packet = ready · accept = accepted · compose = done · pdf path
validate OK → necessary but NOT sufficient alone
```

**Sit.2:** create durable board only for multi-unit / multi-session / L2 / user resume request (`scope: single-chapter`). Resume owner = book-production-orchestrator when board exists.

---


### Soft quality-packet path check (opt-in)

Validate can soft-check that a Quality Packet file and its referenced paths exist:

```bash
./scripts/bookkit validate \
  --typ path/to/chapter.typ \
  --accept path/to/accept.md \
  --quality-packet path/to/quality-packet.md \
  --root . --skip-compile
```

- **Default off** — without `--quality-packet`, pure A smoke stays green (no medical packet required).
- **WARN only** — missing packet or missing listed PNG/MD paths surface as `[WARN] quality_packet`; they do **not** hard-fail validate.
- **Presence only** — this does **not** certify Design CLEAN, Visual CLEAN, or Media Accept. Board cells + Human gates remain authoritative for quality.
- Spec: `devtracks/quality-packet-soft-gate/`.

## Human gates (cannot be agent-signed)

| ID | Meaning |
|---|---|
| H1 | Content Freeze |
| H2 | Media Accept (production) |
| H3 | Review circuit breaker |
| H4 | Proof after PDF |
| H5 | Imprimatur / release |
| H-Gfx | Risky graphic asset |

---

## Related skills

`content-orchestrator` (C-only) · `content-review` · `media-brief` · **`open-assets`** (unit-conditional after Design CLEAN when realism/icons/third-party) · `medical-graphics` · `compose-chapter` · `bookkit` · `typst-writer`  
**Collaboration Contract** (who leads / done / CLEAN authority): `toolset/skill-pack/COLLABORATION-CONTRACT.md`  
**P4 note:** open-assets is **not** a fixed always-on phase — only when Media sets `open_asset_scan=required` (or optional light path).

## Guides

- `Guides/Medical-Presentation-Forms.md`  
- `Guides/Medical-Graphics-Playbook.md`  
- `prepress/README.md`  
