# Content maturity (Produkt C process kit)

**Transitional home** for the Content-Reife-Schleife. **Not** a content Source of Truth.

Governing: `devtracks/content-maturity/` · Decisions: `decisions.md` · Spec: `spec.md`

## MVP flow (v0.3) + agentic adaptations

```text
C1 Draft
  → content-orchestrator (route card) optional
  → C2 Content-Review (evaluate-only | standard | review-with-patches)
       floor: any block ⇒ not freeze-ready
       optional: learner personas (default on), clarity-scan DE (default off)
  → ≤2 rounds → H3 Human if still blocked
  → C3 Freeze H1 (Human-only; content_revision pin)
  → B Media Brief (production) / A Feasibility → Accept H2
  → A Compose → validate --profile production
  → C4 Proof H4 (Human checklist)
# C5 Imprimatur H5 → v0.4
```

Exploration Media Briefs may run pre-freeze with `brief_class: exploration` only.  
**Checkpoints:** [`checkpoints.md`](checkpoints.md) · **Gold adaptations:** [`examples/agentic-adaptations/`](examples/agentic-adaptations/)

## content_revision (binding)

| Valid | Example |
|---|---|
| `git:<short-hash>` | `git:a1b2c3d` |
| `sha256:<hex>` | `sha256:e3b0c44298fc1c14…` |

**Invalid:** bare dates, “latest”, unscoped semver.

Compute file hash (non-git):

```bash
sha256sum path/to/content.md | awk '{print "sha256:" $1}'
```

## Severity & tags

| Severity | Gate |
|---|---|
| `block` | No freeze |
| `should` | Freeze only with Human override note |
| `nit` | Does not block freeze |

Tags: `fach` · `didaktik` · `struktur` · `sprache` · `konsistenz` · `claims` · `rechte` · `safety` · `quellen` · `scope`

## Layout

| Path | Role |
|---|---|
| `skill/content-review/` | Review skill (evaluate-only / patches / floor) |
| `skill/content-orchestrator/` | Thin router + route cards |
| `checkpoints.md` | Human moments H1–H5 |
| `templates/` | Review, freeze, proof, patch, route-card |
| `checklists/core/` | Core + personas + clarity-scan; lean didactic reduction / oversimplification flags |
| `checklists/profiles/medical/` | Deferred v0.4 (see DEFERRED.md) |

**Layout loudness / presentation ideal** is **not** content-review — use `media-brief` (Produkt B).
| `fixtures/` | Synthetic content only |
| `examples/` | Gold filled artifacts |

## Discovery

Symlinks (do not fork skill body):

- `.github/skills/content-review` · `.grok/skills/content-review`
- `.github/skills/content-orchestrator` · `.grok/skills/content-orchestrator`

## A/B coupling

- **A:** `validate --profile smoke|production` — production hard-requires freeze + pin match
- **B:** `brief_class: production|exploration`; production needs freeze meta

## Split

Process moves to Content-Werk repo; A keeps only gate CLI/docs. See `MIGRATION-TO-C.md`.
