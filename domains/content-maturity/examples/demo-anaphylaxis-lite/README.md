# Gold path: demo-anaphylaxis-lite

Synthetic only — not clinical guidance.

| Step | File |
|---|---|
| Draft issues | `../../fixtures/demo-anaphylaxis-lite/content.md` |
| Review R1 (`ready_for_freeze: no`) | `review-round1.md` |
| Author fix (freeze candidate) | `content-frozen.md` |
| Review R2 (`yes_with_nits`) | `review-round2.md` |
| Human freeze | `freeze.md` |
| Human proof example | `proof.md` |

Pin: `sha256:b30e429b8f291e8a6d0b28120d1e5679ec848955461a5ab807ed5ddf1df775e2`  
(recompute with `sha256sum content-frozen.md` if file changes)

Compose validate production fixture: `toolset/compose/fixtures/pass_freeze_production/`.
