# HANDOFF — Implement workspace-split in a new chat

**Audience:** any coding agent continuing this track without prior session context.  
**Date of handoff package:** 2026-07-29  
**Last currency pass:** 2026-07-29 (inventory re-run; plan/README aligned; Phase 1b still open)  
**Branch expectation:** `master` (or current mainline); Phase 1 already merged/committed.

---

## 1. One-paragraph mission

This monorepo organically grew from a **Typst layout platform** into media briefs, AI/raster graphics, content-maturity process, and research. Focus is diluted by bulk assets and many process artifacts. **Do not immediately split into many repos.** Instead: keep a **modular monorepo**, finish **hygiene** (done), implement a **single `bookkit` CLI** (packages + gates + `graphics` namespace), harvest stable Typst graphic modules, rewire skills to CLI verbs, and only **subtree-split** when a hard trigger fires.

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

- **Packages:** layout + (later) graphics libs  
- **CLI:** build, validate, prepress, **graphics** subcommands  
- **Skills:** procedures; call CLI; no freestyle script discovery  
- **Not now:** MCP servers, multi-CLI zoo, skill-only chaos  

Detail: [`joint-recommendation.md`](joint-recommendation.md).

---

## 4. Already done (do not redo)

| Item | Evidence |
|---|---|
| Full file inventory | `devtracks/workspace-inventory/` + `scripts/workspace-inventory.py` (**regenerated** ~851 files / ~36 MB post-hygiene; includes `CATALOG.md`) |
| Architecture plan + peer review | `plan.md` (currency audit 2026-07-29), `antigravity-peer-review.md`, `joint-recommendation.md` |
| Root litter removed | no `scratch_test.*` / `v-*-compile.typ` |
| Asset purge + tag | tag `archive/assets-pre-purge-2026-07-29` @ `093442c`; purge commit `b437aad`; assets ~26 MB |
| Brief archive + gold INDEX | `domains/medical/briefs/_archive/` (42 files) + `INDEX.md` (incl. Wave‑6 gold: sepsis/gicht/le) |
| Canonical asset policy | `domains/medical/assets/CANONICAL.md` |
| Stronger `.gitignore` | PDFs next to sources, eval outputs, scratch |
| Untracked compile PDFs | src/test/spike/eval PDFs |
| B feature tracks harvested | `kl-form-language`, `medical-graphics`, `content-maturity`, `agentic-adaptations` → `_archive/`; ops: `playbook/10-kl-chapter-pipeline.md` |
| Phase plan docs (not CLI) | `ec97338` added phase1b–4 files; **`scripts/bookkit` still without validate/prepress/graphics; print stub** |

Log: [`phase1-hygiene.md`](phase1-hygiene.md) · [`phase1-hygiene-log.md`](phase1-hygiene-log.md).

Restore purged PNG example:

```bash
git show archive/assets-pre-purge-2026-07-29:domains/medical/assets/kl-compartment-spatial/vision-free-gemini-01.png > /tmp/x.png
```

---

## 5. Ordered work remaining

Execute in order unless a phase file says “parallel OK”.

| Order | Phase file | Outcome |
|---:|---|---|
| **1** | [`phase1b-cli.md`](phase1b-cli.md) | `bookkit validate`, `prepress`, `graphics *` work; print no longer stub |
| **2** | [`phase2-boundaries.md`](phase2-boundaries.md) | OWNERSHIP/README clarity; spike libs harvested; pilots thinned; extract-ready B |
| **3** | [`phase4-skills-docs.md`](phase4-skills-docs.md) | Skills + CONSUMER/AGENTS/README point at CLI; Mission A first |
| **4** | [`phase3-split.md`](phase3-split.md) | Only if Human names a trigger + target repo names |

Optional anytime: re-run `python3 scripts/workspace-inventory.py` after large file moves.

---

## 6. Critical paths (touch carefully)

| Path | Role |
|---|---|
| `scripts/bookkit` | **Primary CLI** to extend |
| `toolset/compose/validate/` + `scripts/run_validate.py` | Validate engine |
| `scripts/print-pdfx.sh`, `check-image-dpi.py` | Prepress |
| `scripts/graphics-vision-*.sh`, `graphics-refine-agy.sh`, `graphics-spike-init.sh` | Wrap, don’t fork |
| `packages/bookkit*`, `toolset/form-catalog/` | A runtime |
| `domains/medical/skill/*` | B skill SoT (symlinks elsewhere) |
| `domains/content-maturity/` | C kit transitional |
| `toolset/compose/spikes/graphics/**/lib/*.typ` | Harvest candidates |

---

## 7. Verification suite (after each phase)

```bash
# Inventory (optional)
python3 scripts/workspace-inventory.py

# Platform doctor + smoke build
./scripts/bookkit doctor --root .
./scripts/bookkit build --root toolset/starter --entry main.typ --out dist/starter-smoke.pdf

# Compose validate fixtures
python3 -m unittest discover -s toolset/compose/tests -v
# After CLI wiring, also:
# ./scripts/bookkit validate --typ toolset/compose/fixtures/pass_minimal/chapter.typ ...

# Form catalog
python3 toolset/form-catalog/scripts/check_forms.py

# Toolset shell tests if present
bash toolset/tests/test_toolset.sh
```

Graphics (needs external backends; skip if no Gemini/agy auth):

```bash
# After wiring:
# ./scripts/bookkit graphics vision --backend gemini --brief … --out …
# Prefer documenting dry-run / --help always green
./scripts/bookkit graphics --help   # once implemented
```

---

## 8. Explicit anti-goals

1. Creating separate `graphics-cli`, `media-cli`, `content-cli` binaries.  
2. Physical multi-repo split without D2 trigger confirmation.  
3. Committing intermediate AI vision variants.  
4. Auto-heal compose/validate loops.  
5. Moving showcase `src/` in Phase 1b (D3 = later).  
6. Rewriting clinical content or form-catalog medical genre into foundation.  
7. Deleting `briefs/_archive` or relying on un-tagged history for asset restore.  
8. Large CLAUDE.md rewrites mid-CLI work without phase4 checklist.

---

## 9. Suggested first message for a new chat

> Implement **devtrack `workspace-split` Phase 1b only**.  
> Read `devtracks/workspace-split/README.md` and `HANDOFF.md` and `phase1b-cli.md`.  
> Decisions D1–D5 are locked. Do not split repos. Extend `scripts/bookkit` per the phase checklist, verify with the commands in HANDOFF §7, update phase checkboxes when done.

---

## 10. When this track is “done”

- Phases 1b, 2, 4 complete (phase 3 skipped or completed under trigger).  
- Harvest durable rules into skills/guides.  
- Footer `## Harvested into` on `plan.md`.  
- `git mv` track → `devtracks/_archive/workspace-split/`.
