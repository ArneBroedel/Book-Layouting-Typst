# Book Production Runbook

**From finished text content → print-ready PDF**, with durable state and a top-level orchestrator.

| | |
|---|---|
| **Orchestrator skill** | `book-production-orchestrator` |
| **Board SoT** | `toolset/orchestration/book-production/<book-id>/` |
| **Graphics steps** | `domains/medical/skill/medical-graphics/playbook/` |
| **Media / Form Spec** | `media-brief` + `Guides/Medical-Presentation-Forms.md` |
| **Checkpoints** | `domains/content-maturity/checkpoints.md` |

---

## How you are guided

| Question | Answer |
|---|---|
| **Where do I start if unsure?** | Slash **`/studio`** (skill `studio`) — intake menu, then routes here or to specialists |
| Who keeps the full-book overview? | **`book-production-orchestrator`** via `board.md` + `run-log.md` |
| Step-by-step inside graphics? | **medical-graphics** playbook 00–08 |
| Do I remember the whole flow? | **No** — ask *“status board &lt;book-id&gt;”* or *“what next?”* / `/studio status` |
| Fully autonomous? | **Yes at L2/L3**, stopping at Human gates |

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
Create kickoff + board, plan priorities with me, then drive until Human gate.
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
- [ ] **P3** Media Brief + Form Specs  
- [ ] **P4** Graphics playbook per unit  
- [ ] **P5** Media Accept (**H2** production)  
- [ ] **P6** Compose chapters (embed winners)  
- [ ] **P7** Assemble full book PDF  
- [ ] **P8** Validate (claims/compile/UA)  
- [ ] **P9** Visual QA (PNG + Must-see)  
- [ ] **P10** Prepress (print/PDF-X/DPI)  
- [ ] **P11** Proof (**H4**) / Imprimatur (**H5**)  

---

## Artifact map

| Kind | Typical path |
|---|---|
| Board | `toolset/orchestration/book-production/<id>/board.md` |
| Form Spec | `domains/medical/briefs/<slug>.form-spec.md` |
| Vision/Graphics/Accept | `domains/medical/briefs/<slug>.{vision,graphics,accept}.md` |
| Assets | `domains/medical/assets/<slug>/` |
| Modules | `toolset/compose/spikes/graphics/<slug>/lib/` |
| Chapter typ | `pilots/…` or consumer tree |
| Book PDF | `dist/book.pdf` |
| Print | `dist/book-print.pdf` |

---

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

`content-orchestrator` (C-only) · `content-review` · `media-brief` · `medical-graphics` · `compose-chapter` · `bookkit` · `typst-writer`

## Guides

- `Guides/Medical-Presentation-Forms.md`  
- `Guides/Medical-Graphics-Playbook.md`  
- `prepress/README.md`  
