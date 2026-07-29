# Phase 3 — Physical repository split (DEFERRED)

**Status:** ⏸️ **Blocked until trigger** (decision D2)  
**Do not start** because “it feels tidy.”

---

## Triggers (any one)

From `PRODUCT-BOUNDARIES.md` + joint recommendation:

1. Second content domain / work starts production, **or**  
2. Separate author/graphics team needs isolated write access, **or**  
3. Platform releases blocked by domain noise, **or**  
4. Tracked repo size still painful after purge/LFS (orienting: ≫500 MB tracked), **or**  
5. Human explicitly names target repo URLs and asks to split

---

## Recommended split order (when unblocked)

| Step | Product | Source tree | Method |
|---|---|---|---|
| 3a | C editorial kit | `domains/content-maturity/**` | Follow `devtracks/_archive/content-maturity/SPLIT-CHECKLIST.md` first (smallest) |
| 3b | B medical-media | `domains/medical/**` + `Guides/Medical-*` + `Guides/KL-Form-Language.md` + graphics scripts + harvested typst lib | `git subtree split` |
| 3c | R research | `research/**`, optionally `templates/**` | subtree or new repo copy |
| 3d | A cleanup | remainder = layout platform; optional rename | stub READMEs for moved trees |

---

## Per-split checklist (copy per repo)

- [ ] Human names target remote / path  
- [ ] OWNERSHIP.md + VERSION/pin story  
- [ ] README with consumer pins  
- [ ] Skills provision script for that product only  
- [ ] CI green without sibling products  
- [ ] Update A/B/C pin docs and multi-root workspace  
- [ ] Replace monorepo tree with stub README “moved to …”  
- [ ] Fix/remove broken symlinks under `.github/skills`, `.grok/skills`, `toolset/skill-pack`  
- [ ] One E2E smoke across checkouts (C freeze → B brief → A validate)

### B subtree include list (draft)

```text
domains/medical/
Guides/Medical-Presentation-Forms.md
Guides/Medical-Graphics-Playbook.md
Guides/KL-Form-Language.md
scripts/graphics-*.sh          # until fully absorbed into bookkit package publish story
# plus harvested lib if under domains/medical/lib/
```

Graphics CLI may remain **invoked from A** via path config or B ships a thin `bookkit-graphics` plugin — decide at split time; default: B documents `bookkit graphics` as requiring studio/A CLI pin.

### A retains after B leaves

```text
packages/ bookkit*
toolset/compose toolset/form-catalog toolset/starter
scripts/bookkit prepress fonts
src/ showcase (or examples/)
docs/CONSUMER.md
```

---

## Exit criteria

- [ ] Trigger recorded in `decisions.md` (D6+)  
- [ ] All checklist items for executed splits  
- [ ] No dual SoT of skills
