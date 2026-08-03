# Human checkpoints (C / B / A)

**Track:** `agentic-adaptations` · **Floor rule:** any open `block` ⇒ not freeze-ready (no vanity scores).

| ID | Moment | Owner | Without it you must not… |
|---|---|---|---|
| **H1** | **Content Freeze** sign-off | Human (C) | run **production** Media Brief / production compose quality bar |
| **H-Design** | **Design residual** after design-critique budget (4) or L1 design review | Human (B/C) | free vision / realize with open design `block` findings |
| **H2** | **Media Accept** (production) | Media (B) + freeze pin verified | production compose |
| **H-Explore** | **Exploration quality** when a didactic pilot PDF is presented as a quality result | Human (B) or AX after Design+Visual CLEAN | call dirty exploration PDF “done” / “good” without Visual CLEAN |
| **H3** | **C2 circuit breaker** after 2 review rounds | Human (C) | open a 3rd agent review loop |
| **H4** | **Proof** after production PDF | Human (C) | claim “proofed” / (v0.4) release |
| **H5** | **Imprimatur** | Human (C) | hard print release (**v0.4**; optional now) |
| **H-Gfx** | **Risky production graphic** (anatomy / procedure / diagnostic motif in asset) | Human (C or Fach) | treat production Accept of that asset as final without review (optional; Graphics flags it) |

### Design-quality (agent floors — not Human-optional)

See `devtracks/_archive/design-quality-system/`. Agents must reach **Design CLEAN** + **Visual CLEAN** (PNG-inspected) before Accept — **including exploration** didactic chapter PDFs. Exploration allows draft **content**, not dirty **layout craft**.

## Agent routing

**C-only** (see `content-orchestrator`):

```text
draft/review  → content-review → (blocks?) author → … max 2 → H3
floor clear   → H1 Freeze (Human)
frozen        → media-brief (production) → … → H2 Accept
composed PDF  → H4 Proof
release       → H5 (v0.4)
```

**Full book → print** (see `book-production-orchestrator` + `docs/BOOK-PRODUCTION-RUNBOOK.md`):

```text
P0 kickoff → P1 design → P2 freeze(H1) → P3 form-spec/brief + Design Contract/Critic (Design CLEAN)
  → P4 graphics + Visual Critic (Visual CLEAN) → P5 accept(H2) only on CLEAN packet
  → P6 compose → P7 assembly → P8 validate → P9 visual QA (chapter-level re-check)
  → P10 prepress → P11 proof(H4)/imprimatur(H5)
Board SoT: toolset/orchestration/book-production/<book-id>/
```
Unit-level Visual CLEAN is **before** P5; P9 is assembly re-check, not the first time anyone looks at pages.

## Related

| Artifact | Path |
|---|---|
| Freeze template | `templates/freeze-record.template.md` |
| Proof template | `templates/proof-record.template.md` |
| Freeze gate (A) | `toolset/compose/validate/freeze_gate.py` (`--profile production`) |
| Skills | `content-review`, `content-orchestrator`, `book-production-orchestrator`, `media-brief`, `medical-graphics`, `compose-chapter` |
| Book runbook | `docs/BOOK-PRODUCTION-RUNBOOK.md` |
