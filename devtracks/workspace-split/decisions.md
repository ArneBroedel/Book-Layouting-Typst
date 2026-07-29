# Human decisions — workspace-split

**Date:** 2026-07-29  
**Context:** [`joint-recommendation.md`](joint-recommendation.md) · Antigravity peer-review

| # | Question | Decision |
|---|---|---|
| D1 | Asset-Purge intermediate Vision-PNGs | **Quarantäne:** Tag `archive/assets-pre-purge-2026-07-29`, dann aus `main` entfernen (Provenance via Tag) |
| D2 | Physischer Repo-Split | **Nur triggerbasiert** (2. Domäne / Multi-Team / Größenproblem) |
| D3 | Showcase `src/` | **Später** nach `examples/showcase-book/` — nicht Phase 1 |
| D4 | Vision/Refine CLI | **`bookkit graphics vision\|refine`** (Namespace unter einer CLI) |
| D5 | Gold-Brief-Set | **Vorschlag:** iii2, iii5, iv2, iv4, kl-melanom, kl-us-d, kl-stroke-fast, kl-compartment-spatial; optional ii1, kl-ces-saddle. Rest → `briefs/_archive/` oder Work |

## CLI target surface (D4)

```text
bookkit doctor | init | build | watch | ua | print
bookkit validate …
bookkit prepress …
bookkit catalog …
bookkit graphics vision | refine | spike-init | manifest
```

Phase-1 implementiert Hygiene + Policy-Docs; CLI-Wiring folgt in Phase 1b/2.

## Gold unit prefixes (D5)

| Prefix | Role |
|---|---|
| `iii2-bls-aed` | Gold chapter unit |
| `iii5-cauda-notfallkarte` | Gold chapter unit |
| `iv2-rueckenschmerz-neuro` | Gold chapter unit |
| `iv4-heisses-gelenk` | Gold chapter unit |
| `kl-melanom` | Gold KL unit (+ abcde/urgency/mimic) |
| `kl-us-d-urgency` | Gold KL unit |
| `kl-stroke-fast` | Gold KL unit |
| `kl-compartment-spatial` | Gold KL unit (+ core compartment brief) |
| `ii1-drei-achsen-drisc` | Optional gold |
| `kl-ces-saddle` | Optional gold |
| `kl-u-*`, `kl-f2-*`, `kl-f3-*`, `kl-f4-*` | **Form-library** specs (keep top-level, not chapter gold) |
