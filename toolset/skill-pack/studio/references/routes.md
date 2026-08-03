# Route table (studio → skills / CLI)

After intake, pick **next_skill** and optional **CLI**. Studio may **execute** the skill procedure in-session (L1/L2) or **stop with a route card** (L0).

---

## Primary routes

| Situation | next_skill | CLI / paths |
|---|---|---|
| 1 Full book kickoff | `book-production-orchestrator` | board under `toolset/orchestration/book-production/<id>/` |
| 1/7 Resume / status | `book-production-orchestrator` | `./scripts/book-production-status.sh <id>` |
| 2 Chapter pipeline start (no freeze, production) | Human **H1** or `content-orchestrator` | freeze template in `domains/content-maturity/` |
| 2 Content draft | `content-review` via `content-orchestrator` | review-report |
| 2 Frozen / exploration content → design | `media-brief` | `domains/medical/briefs/`, templates |
| 2 Form Specs ready → graphics | `medical-graphics` | `bookkit graphics …`; libs `domains/medical/lib/typst/` |
| 2 Graphics candidates ready → accept | `media-brief` Accept | **H2** if production |
| 2 Accept yes → typ | `compose-chapter` | `bookkit validate` / `build` |
| 3 Content only | `content-orchestrator` | C templates |
| 4 Graphics only | `media-brief` and/or `medical-graphics` | see situations.md §4 |
| 4 Open/free images, licenses, attribution | **`open-assets`** | MANIFEST/CREDITS; before free vision when realism needed |
| 5 Compose only | `compose-chapter` | `./scripts/bookkit validate …` |
| 6 Platform | `bookkit` | doctor, init, examples, CONSUMER.md |
| **9 Form Lab (lab-learning)** | **`form-lab-orchestrator`** | board under `toolset/orchestration/form-lab/<lab-id>/`; Studio **handoff only**; skill default **L2 autodrive-to-complete** (full T→S + harvest) |
| 7 Resume form-lab board | `form-lab-orchestrator` | default: `Resume … autonomy L2 autodrive-to-complete`; opt-out: Orchestrator only |

---

## Hand-off phrases (L0 or session switch)

Give the user a **pasteable** next message when useful:

**Full book:**
```text
Skill: book-production-orchestrator
Kickoff book_id: <id>
content_root: <path>
brief_class: production|exploration
autonomy: L1|L2
print_target: screen|print-pdfx|both
```

**Resume:**
```text
Resume book-production board <book_id> autonomy L2
```

**Media (design council):**
```text
Skill: media-brief
Content: <path>
Genre: …
Write brief + form-specs + design-contracts. Design Critic until Design CLEAN.
No production .typ. No free vision until Design CLEAN.
```

**Graphics (realize + visual council):**
```text
Skill: medical-graphics
Design CLEAN packet: <form-spec + contract + design-critique clean>
Track: free-vision-ambition (default) | grammar-only (opt-in only)
G0→free vision→claim audit→harvest→atoms→realize→Visual Critic on PNG until Visual CLEAN.
Caps: 2 free + 2 refine + 5 visual rounds. No pin-monotone / code-leak / self-CLEAN.
```

**Compose:**
```text
Skill: compose-chapter
Accept (Design+Visual CLEAN): <path> · Content: <path> · graphic_decisions: <path>
Embed Accept winners only. Then bookkit validate (not a design pass).
```

**Form Lab (situation 9 — handoff only; skill autodrives):**
```text
Skill: form-lab-orchestrator
lab_id / portfolio: <slug>
content pins: <paths>
mission_class: lab-learning
autonomy: L2 autodrive-to-complete
Kickoff if new; else resume. Full program to COMPLETE; do not stop after L0 handoff.
Do not run medium craft inside studio (form-lab skill does after handoff).
```

**Form Lab resume (default):**
```text
Resume Form Lab board <lab-id|portfolio-id> autonomy L2 autodrive-to-complete.
Skill: form-lab-orchestrator.
Read board.md + run-log.md + route.md. Continue full program to COMPLETE.
```

---

## Parallel exploration (allowed)

Exploration briefs/graphics **may** run **before** freeze — but:

- Label `brief_class: exploration`  
- Do **not** claim production compose done  
- Production accept requires freeze pin  

Studio must say this explicitly when users want “fast graphics first”.

---

## Product boundaries (routing must respect)

| From | Must not |
|---|---|
| A compose | Invent didactic ideal when brief exists |
| B media | Write production `.typ` |
| B graphics | Invent Form Spec / claims; endless refine loops |
| C review | Rewrite claims silently; agent freeze |

Boundaries: `devtracks/PRODUCT-BOUNDARIES.md` · consensus: `devtracks/CONSENSUS-v0.md`.
