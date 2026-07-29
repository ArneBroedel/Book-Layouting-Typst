# HANDOFF — workspace-split status

**Audience:** any coding agent continuing this track without prior session context.  
**Date:** 2026-07-29 · **Track status:** **archived** (no Phase 3 for now)  
**Branch expectation:** `master` (or current mainline)

---

## 1. One-paragraph mission

This monorepo organically grew from a **Typst layout platform** into media briefs, AI/raster graphics, content-maturity process, and research. Focus is diluted by bulk assets and many process artifacts. **Do not immediately split into many repos.** Instead: keep a **modular monorepo**, finish **hygiene** (done), implement a **single `bookkit` CLI** (**done**), harvest stable Typst graphic modules (**done**), rewire skills to CLI verbs (**done**), and only **subtree-split** when a hard trigger fires (Phase 3 / D2).

---

## 2. Locked decisions (do not re-ask)

| ID | Decision |
|---|---|
| D1 | Intermediate vision PNGs: tag quarantine then purge from main |
| D2 | Physical repo split **trigger-only** |
| D3 | Showcase stays in `src/` for now; move to `examples/` later |
| D4 | CLI surface: **`bookkit graphics vision|refine|…`** under one binary |
| D5 | Gold brief set as in `domains/medical/briefs/INDEX.md` |

Full text: [`decisions.md`](decisions.md).

---

## 3. Delivery model (binding)

```text
Skills (roles) → bookkit CLI (one entry) → Typst packages + Python/shell engines
```

Detail: [`joint-recommendation.md`](joint-recommendation.md).

---

## 4. Already done (do not redo)

| Item | Evidence |
|---|---|
| Full file inventory | `devtracks/_archive/workspace-inventory/` + `scripts/workspace-inventory.py` |
| Architecture plan + peer review | `plan.md`, `antigravity-peer-review.md`, `joint-recommendation.md` |
| Phase 1 hygiene | purge, gold briefs, tag `archive/assets-pre-purge-2026-07-29` |
| **Phase 1b CLI** | `scripts/bookkit` v0.1.1: `validate`, `catalog check`, `print`, `prepress dpi|pdfx`, `graphics *`; smoke `toolset/tests/test_bookkit_cli.sh` |
| **Phase 2 boundaries** | `toolset/OWNERSHIP.md`, `packages/OWNERSHIP.md`, `domains/README.md`; harvest `domains/medical/lib/typst/`; spike libs re-export; `pilots/_archive/kursbuch-welle-03/`; research/templates banners |
| **Phase 4 skills/docs** | bookkit / compose-chapter / medical-graphics / media-brief rewired; root `README.md` consumer-first; AGENTS/CLAUDE/CONSUMER/KNOWLEDGE-MAP |
| Phase 3 | **not started** — blocked on D2 trigger |

---

## 5. Ordered work remaining

| Order | Phase file | Outcome |
|---:|---|---|
| **only if trigger** | [`phase3-split.md`](phase3-split.md) | Physical subtree split after Human names repos + trigger |

Optional anytime: re-run `python3 scripts/workspace-inventory.py` after large file moves.  
Optional later (D3): showcase move `src/` → `examples/showcase-book/`.

---

## 6. Critical paths

| Path | Role |
|---|---|
| `scripts/bookkit` | **Primary CLI** (v0.1.1) |
| `toolset/compose/validate/` + `scripts/run_validate.py` | Validate engine |
| `domains/medical/lib/typst/` | Harvested B graphic modules SoT |
| `scripts/print-pdfx.sh`, `check-image-dpi.py` | Prepress |
| `scripts/graphics-*.sh` | Engines wrapped by CLI |
| `packages/bookkit*`, `toolset/form-catalog/` | A runtime |
| `domains/medical/skill/*` | B skill SoT |

---

## 7. Verification suite

```bash
python3 scripts/workspace-inventory.py
./scripts/bookkit doctor --root .
./scripts/bookkit build --root . --entry toolset/examples/minimal/main.typ --out dist/toolset/minimal.pdf
bash toolset/tests/test_bookkit_cli.sh
python3 -m unittest discover -s toolset/compose/tests -v
python3 toolset/form-catalog/scripts/check_forms.py
# or: ./scripts/bookkit catalog check
./scripts/bookkit validate \
  --typ toolset/compose/fixtures/pass_minimal/chapter.typ \
  --content toolset/compose/fixtures/pass_minimal/content.md \
  --accept toolset/compose/fixtures/pass_minimal/accept.md \
  --genre-minima toolset/compose/fixtures/pass_minimal/genre-minima.yaml \
  --root . --skip-compile
typst compile --root . --ignore-system-fonts --font-path fonts \
  toolset/compose/spikes/graphics/kl-wave6/spike-grammar.typ \
  dist/spikes/graphics/kl-wave6/grammar.pdf
```

Graphics backends need external auth — `./scripts/bookkit graphics --help` always green offline.

---

## 8. Explicit anti-goals

1. Creating separate `graphics-cli`, `media-cli`, `content-cli` binaries.  
2. Physical multi-repo split without D2 trigger confirmation.  
3. Committing intermediate AI vision variants.  
4. Auto-heal compose/validate loops.  
5. Moving showcase `src/` without scheduling D3.  
6. Rewriting clinical content or form-catalog medical genre into foundation.  

---

## 9. Suggested first message (if only Phase 3 remains)

> Phase 1b/2/4 of workspace-split are done. Do **not** start Phase 3 unless Human confirms a D2 trigger and names target repos. Optional: D3 showcase move or inventory refresh only.
