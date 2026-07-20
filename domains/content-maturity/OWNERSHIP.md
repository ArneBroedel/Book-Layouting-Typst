# Ownership — content maturity process (Produkt C)

| | |
|---|---|
| **Produkt** | **C** — Content-Werk (process kit, not chapter SoT) |
| **Heute (transitional)** | `domains/content-maturity/` in Layout monorepo (A) |
| **Ziel-Repo** | `CONTENT_WORK_REPO` (TBD) — e.g. Kursbuch / editorial kit |
| **Track** | `devtracks/content-maturity/` |
| **Decisions** | `devtracks/content-maturity/decisions.md` (D1–D11) |

## May change (here / after split in C)

- Skills `content-review`, `content-orchestrator`
- Templates (review, freeze, proof, patch, route-card)
- Core checklists (incl. learner-persona, clarity-scan) + deferred medical stubs
- `checkpoints.md`
- Synthetic fixtures and gold examples
- Process README / migration notes

## Must not

- Store real Kursbuch chapter SoT here
- Import or depend on `packages/bookkit` for the review process
- Put medical checklists into `toolset/compose/validate` (A stays domain-agnostic)
- Let agents silently merge content patches into SoT
- Agent-only freeze (Human sign-off required — D1)

## Pins / contracts exported to A/B

| Field | Meaning |
|---|---|
| `content_status` | `draft` \| `review` \| `frozen` \| `proofed` \| … |
| `content_revision` | `git:<short>` or `sha256:<hex>` only |
| Freeze record path | Human-signed; production gate input |

## Split

See `devtracks/content-maturity/SPLIT-CHECKLIST.md` and `MIGRATION-TO-C.md`.
