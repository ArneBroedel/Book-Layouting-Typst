# Phase 3 Split — DEFERRED

**Date:** 2026-07-20  
**Auditor:** boundaries-auditor (Wave 5.2 / CP-REVIEW-BOUNDARIES)  
**Parent plan:** [plan.md](plan.md)  
**Policy:** [PRODUCT-BOUNDARIES.md](../PRODUCT-BOUNDARIES.md) § Auslagerungs-Trigger

## Decision

**Do not split** `domains/medical/` into a separate repo in this orchestration cycle.

## Trigger evaluation

| Trigger (any one sufficient) | Met? | Evidence |
|---|---|---|
| Second work / second domain starts | **No** | Only `domains/medical/` under `domains/` |
| Domain has stable skills + ≥2 gold briefs **and** own CI needs | **Partial / No** | Skill `media-brief` + III-5/III-2 briefs exist; **no** domain-owned CI; no release friction |
| Platform releases blocked by domain noise | **No** | `.github/workflows/build.yml` paths: `src/**`, `fonts/**` only — no `domains/medical` coupling |

## What remains ready (no split required)

- Clear folder boundary: B under `domains/medical/`, A under `packages/`, `toolset/form-catalog/core`, `toolset/compose/`
- `domains/medical/OWNERSHIP.md` names Produkt B and pin expectations (remote name TBD)
- Consumer pin + path docs: `docs/CONSUMER.md`
- Engine/catalog free of Kursbuch absolute paths

## Re-open criteria

Schedule Phase 3 when **any** PRODUCT-BOUNDARIES trigger fires, then:

1. Complete remaining split-readiness item (post-split remotes in OWNERSHIP/PRODUCT-BOUNDARIES)
2. `git subtree split` / history policy
3. Dual-repo AGENTS + workspace update
4. Confirm platform CI green without domain tree
