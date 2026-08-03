# Scenario F audit summary — 2026-08-03

Full agent audit (worker) confirmed Phase B **GO**. Condensed for track provenance.

## Counts (active briefs)

| Metric | N |
|---|---:|
| Accepts (active) | 25 |
| With packet link | 16 |
| Missing packet file | 0 |
| No packet link | 9 (+9 archive) |
| Hollow packets (no resolvable paths) | ≥8 hard |
| Packets with missing cited PNG | ≥1 clear (wp9 `preview/p2.png`) |
| Board accepted rows without T3 `quality_packet` col | 22 across 3 boards |

## Hard GO bullets

1. Hollow packets after Accept CLEAN checkboxes while `dist/pilots/…` PNGs exist (index failure, not missing work).
2. `kl-crps-wp9-2026-07-31` cites `preview/p2.png` — **absent** (only p1 + unit.pdf).
3. Pre-T3 boards idle/accepted without quality_packet cell (kursbuch-explore, d-risc-batch, demo-welle03).

## Decision

**GO** → unblock `quality-packet-soft-gate`.

See also `../findings.md`.
