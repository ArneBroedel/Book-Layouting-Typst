# Section rhythm — system harvest (2026-08-01)

**Trigger:** Human feedback on `kl-kompartment-batch-2026-08` p1/p2 (cramped H2; list-indented section titles).

## Rule (one-liner)

> **Fixed air above every section head; flush left; card lists not bookkit-nested — densify content, never steal section air.**

## Wired into

| Layer | Path |
|---|---|
| Typst helper | `domains/medical/lib/typst/explore-2026-08/section-rhythm.typ` |
| typst-writer | §7 Section rhythm |
| compose-chapter | Macro structure §8 + density §10 |
| CREATIVE-COMPOSE | Still non-negotiable + pilot snippet |
| Visual Critic playbook | `11-visual-critique.md` macro table |

## Applied to batch pilots

All four `*-batch-2026-08` chapters use `#show: setup-pilot-sections()` after `setup-typography()`.

```bash
code dist/pilots/ii1-drisc-batch-2026-08/p1.png
code dist/pilots/iv2-ruecken-batch-2026-08/p1.png
code dist/pilots/kl-gicht-batch-2026-08/p1.png
code dist/pilots/kl-kompartment-batch-2026-08/p1.png
```
