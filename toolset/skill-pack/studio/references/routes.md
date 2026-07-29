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
| 5 Compose only | `compose-chapter` | `./scripts/bookkit validate …` |
| 6 Platform | `bookkit` | doctor, init, examples, CONSUMER.md |

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

**Media:**
```text
Skill: media-brief
Content: <path>
Genre: …
Write brief + form-specs for ambitious units. No production .typ.
```

**Graphics:**
```text
Skill: medical-graphics
Form Spec: <path>
Run playbook free vision → claim audit → realize. Caps 2+2.
```

**Compose:**
```text
Skill: compose-chapter
Accept: <path> · Content: <path> · Compose chapter.typ then bookkit validate.
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
