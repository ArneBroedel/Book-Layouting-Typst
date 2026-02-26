# Showcase-v1: Development Plan (Extended)

## Overview

This plan upgrades the current 5-phase track with an explicit **Typst-first architecture workflow**:
1. Visual deconstruction before implementation
2. Strong foundation in set/show rules and layout primitives
3. Reactive page systems via introspection (`context`, `query`, `counter`)
4. Controlled escalation from core Typst to optional packages only if needed

The existing phase docs remain valid and are now orchestrated by stricter gates and dependencies.

## Extended Phase Breakdown

| Phase | Name | Focus | Effort | Dependencies | Primary Files |
|-------|------|-------|--------|--------------|---------------|
| 0 | **Layout Deconstruction & Target Mapping** | Map intended visual system to Typst primitives (`grid`, `block`, `place`, `stack`) and define acceptance snapshots | 0.5–1 day | None | `showcase-v1-spec.md`, `main.typ` |
| [Phase 1](showcase-v1-phase1.md) | **Typography & Spacing** | Type scale, rhythm, baseline intent, paragraph/list behavior | 2–3 days | Phase 0 | `styles/theme.typ`, `styles/typography.typ` |
| [Phase 2](showcase-v1-phase2.md) | **Color & Contrast** | Semantic palette, WCAG validation, visual hierarchy rules | 1–2 days | Phase 1 | `styles/theme.typ`, style/component files |
| [Phase 3](showcase-v1-phase3.md) | **Components (Base & Advanced)** | Reusable components with consistent semantics and spacing contracts | 2–3 days | Phases 1–2 | `components/*.typ` |
| [Phase 4](showcase-v1-phase4.md) | **Layout & Spreads** | Chapter spreads, multi-column systems, breakouts, margin logic, full-bleed sections | 3–4 days | Phases 1–3 | `styles/page.typ`, `components/layouts.typ`, `components/spreads.typ`, `main.typ` |
| [Phase 5](showcase-v1-phase5.md) | **Content & Polish** | Narrative rewrite, diagrams, references/footnotes, final editorial polish | 3–4 days | Phases 1–4 | Chapter files, assets, `main.typ` |
| 6 | **Reactive QA & Release Hardening** | Introspection validation, compile performance checks, print/export readiness, release packaging | 1 day | Phases 0–5 | whole project |

**Estimated Total**: 13–18 days.

## Workstreams (Parallelizable)

| Workstream | Scope | Can Start | Notes |
|------------|-------|-----------|-------|
| A: Foundations | Tokens, typography, palette | Phase 0 | Must complete before stable component styling |
| B: Components | Admonitions/cards/tables/figures | Late Phase 1 | Build against token contracts only |
| C: Layout Systems | Spreads, headers, margin notes, full-bleed | Phase 2 | Depends on stable color + component API |
| D: Content/Assets | Chapter rewrites, SVG assets | Phase 3 | Use finalized component/layout patterns |
| E: QA/Release | Compile checks, render comparisons, metadata | Continuous, final in Phase 6 | No skipped quality gates |

## Gate Criteria (Per Phase)

Every phase must pass:
- `typst compile` succeeds with zero errors
- no new warnings introduced without explicit tracking
- visual diff checked via PNG renders
- readability preserved at 100% zoom
- changes committed as focused phase commit

Additional gates by phase:
- Phase 0: Deconstruction map exists (grid, flow, exceptions, introspection candidates)
- Phase 1: Type/spacing tokens finalized and reused globally
- Phase 2: Text/background combinations pass WCAG AA
- Phase 3: Component inventory documented and reusable
- Phase 4: Running headers/footers use context-aware logic safely
- Phase 5: Content quality and reference styling consistent across chapters
- Phase 6: Export + print-readiness validated, release notes complete

## Typst Architecture Checklist (Must Be Visible in Implementation)

- **Styling model**: clear separation of `set` defaults vs `show` transformations
- **Layout primitives**: explicit use of `block`/`box`/`grid`/`stack` by intent
- **Advanced placement**: `place` used only for true flow exceptions
- **Introspection**: context-aware headers and counters with stable logic
- **Book structure**: front/main/back matter behavior tracked (numbering + headers)
- **Semantic discipline**: table vs grid usage decided by content meaning

## Risk Register

| Risk | Impact | Mitigation |
|------|--------|------------|
| Over-styling early phases | Rework in later layout phases | Freeze token contracts before component expansion |
| Excessive absolute placement | Fragile pagination | Prefer flow/grid; reserve `place` for justified exceptions |
| Introspection instability | Header/counter glitches | Isolate and test context/query logic in small fixtures |
| Scope creep in assets | Timeline slips | Lock minimum asset set before Phase 5 production |
| Accessibility drift | Poor readability/contrast | Phase 2 contrast matrix + final QA recheck |

## Decision Log (Locked)

1. No external packages during core redesign; optional package experiments only after Phase 6 baseline.
2. A4 format stays.
3. German content stays.
4. Medical/didactic theme stays.
5. Grid-first and semantic-first implementation is required before decorative additions.

## Rollout Strategy

1. Work in-place in the showcase folder (`v0 → v1`).
2. Commit at each phase boundary with concise scope.
3. Generate PNG renders after each phase for visual verification.
4. Run compile checks before every commit.
5. Keep a short changelog section in each phase file for traceability.

## Workflow Snapshot

```
Current State (v0)
    ↓
Phase 0: Visual deconstruction + target map
    ↓
Phase 1: Typography and spacing contracts
    ↓
Phase 2: Semantic color and contrast system
    ↓
Phase 3: Reusable component layer
    ↓
Phase 4: Advanced layout + spreads + reactive pages
    ↓
Phase 5: Content, diagrams, editorial polish
    ↓
Phase 6: QA hardening + release packaging
    ↓
Showcase-v1 (production-ready)
```

## Next Step

Start with Phase 0 deconstruction notes in `showcase-v1-spec.md`, then execute [Phase 1: Typography & Spacing](showcase-v1-phase1.md).
