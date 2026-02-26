# Showcase-v1: Development Plan

## Overview

The visual overhaul is split into **5 phases**, each building on the previous. Phases are parallelizable where feasible, but dependencies exist (e.g., color system must precede component styling).

## Phase Breakdown

| Phase | Name | Focus | Effort | Dependencies |
|-------|------|-------|--------|--------------|
| [Phase 1](showcase-v1-phase1.md) | **Typography & Spacing** | Type scale, baseline grid, token refinement | 2–3 days | None |
| [Phase 2](showcase-v1-phase2.md) | **Color & Contrast** | Palette expansion, WCAG validation, visual coding | 1–2 days | Phase 1 (type) |
| [Phase 3](showcase-v1-phase3.md) | **Components (Base)** | Admonitions, cards, callouts, refined boxes | 2–3 days | Phase 1–2 |
| [Phase 4](showcase-v1-phase4.md) | **Layout & Spreads** | Chapter openers, full-bleed, margin notes, grid refinement | 3–4 days | Phase 1–3 |
| [Phase 5](showcase-v1-phase5.md) | **Content & Polish** | Rewrite narrative, add visuals, running headers, final pass | 3–4 days | Phase 1–4 |

**Estimated Total**: 11–16 days (can parallelize some work).

## Success Gates

After each phase, the showcase must:
- Compile without errors/warnings
- Maintain readability at 100% zoom
- Be committable to Git (no binary artifacts)

## High-Level Workflow

```
Current State (v0)
    ↓
Phase 1: Type tokens refreshed
    ↓
Phase 2: Color system in place
    ↓
Phase 3: Component layer styled
    ↓
Phase 4: Layout breakthrough (spreads, structure)
    ↓
Phase 5: Content storytelling & polish
    ↓
Showcase-v1 (production-ready)
```

## Key Decisions Locked

1. **No external packages** during core redesign (CeTZ/others reserved for later)
2. **A4 format** remains (already professional standard)
3. **German content** stays (demonstrates i18n capability)
4. **Medical/didactic theme** stays (differentiates from generic tech docs)

## Rollout Strategy

1. **Work in main showcase folder** (v0 → v1 in-place)
2. **Git commits at each phase end** for reversibility
3. **PNG renders** after each phase to visually validate
4. **Compile checks** before every commit

## Next Step

→ See **[Phase 1: Typography & Spacing](showcase-v1-phase1.md)** to begin.
