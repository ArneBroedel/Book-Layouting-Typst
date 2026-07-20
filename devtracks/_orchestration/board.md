# Orchestration board

**Started:** 2026-07-20  
**Completed:** 2026-07-20  
**Source:** `devtracks/ORCHESTRATION.md`  
**Governance:** CONSENSUS-v0.2, PRODUCT-BOUNDARIES, ROLES-AND-FLOW  
**Final verdict:** APPROVE_WITH_NITS (Wave 5.3) — no open P0

## Wave

- Wave: **5 complete — orchestration done**
- Active agents: —
- Blocked: —

## Out of scope (frozen)

- Repo-Split Phase 3 (deferred — see `platform-boundaries/PHASE3-DEFERRED.md`)
- Auto-heal / self-healing compile loops
- YAML-Assembler as primary path
- Content-MD copies into `src/` or `packages/`
- Medical logic in `packages/bookkit` foundation
- Superseded tracks: `presentation-pipeline/`, `didactic-media/`, `plan-driven-layout/`
- Facets art/legal expansion, prepress extras, MCP

## Checklist E1–E12

- [x] E1 forms.yaml ≥12 stable, fully mapped; VERSION set (31 stable, 0.1.0-dev)
- [x] E2 Genre-Rezept `notfall-karte` final + Validator-Minima
- [x] E3 Skill `media-brief` + ≥1 Gold-Brief (III-5) under `domains/medical/`
- [x] E4 Skill `compose-chapter` + Feasibility-Flow
- [x] E5 Validator under `toolset/compose/validate/`
- [x] E6 Durable tests green (fixtures) — 24/24 OK
- [x] E7 E2E pilot full path → PDF
- [x] E8 Side-by-side vs legacy (`pilots/kursbuch-welle-03`) documented
- [x] E9 Product boundaries (no Content-SoT in A; medical under domains/)
- [x] E10 platform-boundaries Phase 1+2; Phase 3 deferred+reason
- [x] E11 Governance current; harvest footers where closable
- [x] E12 ≥2 independent reviews without open P0 (W1.4, W5.2, W5.3 FINAL)

## Wave exits

- [x] W0 Orient & freeze scope
- [x] W1 Form Catalog Core — Review 1.4 APPROVE_WITH_NITS (no P0)
- [x] W2 Media Design — Review 2.4 APPROVE_WITH_NITS (no P0)
- [x] W3 Compose Engine + Validator — Review 3.4 APPROVE_WITH_NITS (no P0)
- [x] W4 E2E Pilot — Review 4.6 APPROVE_WITH_NITS (no P0; delta after report)
- [x] W5 Platform finish + final review — FINAL APPROVE_WITH_NITS (no P0)

## Open P0

- (none)

## Open P1 (tracked nits — non-blocking)

- check_forms.py does not verify symbol export existence
- score-table / reference-table params slightly inaccurate
- fallbasiert stub outdated mc-question note
- protocol-steps catalog gap (high severity for notfall F4; approx accepted in pilot)
- Mid-wave review bodies not persisted as separate files (summarized below)

## Human escalations

- (none)
- Optional: Human archive of closable tracks after harvest confirmation

## Independent reviews (E12)

| Review | Verdict | P0 |
|---|---|---|
| Wave 1.4 catalog+boundaries | APPROVE_WITH_NITS | none |
| Wave 2.4 media | APPROVE_WITH_NITS | none |
| Wave 3.4 compose | APPROVE_WITH_NITS | none |
| Wave 4.6 E2E (delta after report) | APPROVE_WITH_NITS | none |
| Wave 5.2 boundaries audit | PASS | none |
| Wave 5.3 FINAL | APPROVE_WITH_NITS | none |

## Wave log

### Wave 0 (2026-07-20)

- Read ORCHESTRATION, CONSENSUS, PRODUCT-BOUNDARIES, 4 track plans.
- Scaffold present; out-of-scope frozen.
- Proceed Wave 1.

### Wave 1 (2026-07-20)

- catalog-curator: 31 stable + 5 planned; BASIS/GAP/ANTI-PATTERNS; check_forms.py OK
- domain-recipe: notfall-karte.md + minima.yaml; stubs lerntext/fallbasiert
- Review 1.4: APPROVE_WITH_NITS — Wave exit

### Wave 2 (2026-07-20)

- media-designer: Gold Brief III-5, optional III-2, accept shape
- skill-author: media-brief under domains/medical + discovery symlinks
- Accept production checkbox corrected to shape-demo until Wave 4 real feasibility
- Review 2.4: APPROVE_WITH_NITS — Wave exit

### Wave 3 (2026-07-20)

- validator-engineer: toolset/compose/validate/* + fixtures + 24 tests OK
- skill-author: compose-chapter + provision
- Skill CLI path fixed (orchestrator nit) to scripts/run_validate.py
- Review 3.4: APPROVE_WITH_NITS — Wave exit

### Wave 4 (2026-07-20)

- feasibility + accept(yes) + compose III-5 pilot
- validate full path green (6 forms, 6 claims, minima, accept, compile)
- claims extractor improved for table claims + markup punctuation
- report: pilots/kursbuch-welle-03-compose/reports/e2e-iii5-2026-07-20.md
- Review 4.6: APPROVE_WITH_NITS after report delta — Wave exit

### Wave 5 (2026-07-20)

- docs: docs/CONSUMER.md + root README + pilot consumer notes
- boundaries audit: Phase 1+2 done; Phase 3 deferred
- harvest footers on track plans
- FINAL Review 5.3: APPROVE_WITH_NITS — **orchestration complete**
