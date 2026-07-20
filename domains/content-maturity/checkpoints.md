# Human checkpoints (C / B / A)

**Track:** `agentic-adaptations` · **Floor rule:** any open `block` ⇒ not freeze-ready (no vanity scores).

| ID | Moment | Owner | Without it you must not… |
|---|---|---|---|
| **H1** | **Content Freeze** sign-off | Human (C) | run **production** Media Brief / production compose quality bar |
| **H2** | **Media Accept** (production) | Media (B) + freeze pin verified | production compose |
| **H3** | **C2 circuit breaker** after 2 review rounds | Human (C) | open a 3rd agent review loop |
| **H4** | **Proof** after production PDF | Human (C) | claim “proofed” / (v0.4) release |
| **H5** | **Imprimatur** | Human (C) | hard print release (**v0.4**; optional now) |

## Agent routing (see `content-orchestrator`)

```text
draft/review  → content-review → (blocks?) author → … max 2 → H3
floor clear   → H1 Freeze (Human)
frozen        → media-brief (production) → … → H2 Accept
composed PDF  → H4 Proof
release       → H5 (v0.4)
```

## Related

| Artifact | Path |
|---|---|
| Freeze template | `templates/freeze-record.template.md` |
| Proof template | `templates/proof-record.template.md` |
| Freeze gate (A) | `toolset/compose/validate/freeze_gate.py` (`--profile production`) |
| Skills | `content-review`, `content-orchestrator`, `media-brief`, `compose-chapter` |
