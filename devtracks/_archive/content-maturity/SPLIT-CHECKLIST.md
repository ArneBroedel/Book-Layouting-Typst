# Split checklist — `content-maturity` → Produkt C

Use before removing the transitional tree from the layout monorepo (Produkt A).

## Preconditions

- [ ] Phase 4 gold path works on fixtures
- [ ] Skill boundaries reviewed (no bookkit compose duties)
- [ ] Human chose target C repo / path (`CONTENT_WORK_REPO`)
- [ ] A/B residual hooks inventoried (docs/CLI that **stay**)

## Tree purity (must be true)

- [ ] No imports/paths into `packages/bookkit` required to run content-review
- [ ] No Kursbuch chapter SoT stored under `domains/content-maturity/`
- [ ] Fixtures are synthetic / licensed for move
- [ ] Medical profile has no form-catalog **enforcement** logic (references to B recipes are optional links)
- [ ] OWNERSHIP.md states C ownership post-move

## Move steps (execute in C repo change-set)

- [ ] Copy/split `domains/content-maturity/**` → C canonical path (e.g. `editorial/` or `.skills/content-review/`)
- [ ] Rewire skill discovery in **C** agent tooling
- [ ] Update C README: C0–C5 flow, freeze before layout handoff
- [ ] Pin how C exposes `content_path` + `content_revision` to A/B consumers

## Cleanup in A repo

- [ ] Remove or replace transitional tree with short pointer README („moved to C“)
- [ ] Remove discovery symlinks that pointed at domain path **or** retarget to stub
- [ ] Keep compose/media **gate documentation** and any CLI flags
- [ ] Update PRODUCT-BOUNDARIES / CONSENSUS / AGENTS paths
- [ ] Update multi-root workspace examples

## Cleanup in B (if separate)

- [ ] media-brief still documents freeze contract (path-agnostic)
- [ ] No copy of content-review skill into B

## Verification

- [ ] C: agent produces Review-Report from C-local fixture
- [ ] A: compose pilot still runs with **external** content path + freeze pin
- [ ] A CI does not require content-maturity tree for platform tests
- [ ] No broken symlinks under `.github/skills` / `.grok/skills`

## Sign-off

| Role | Name / date | OK |
|---|---|---|
| Platform (A) | | [ ] |
| Content process (C) | | [ ] |
| Domain media (B) if impacted | | [ ] |
