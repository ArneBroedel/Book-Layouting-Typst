# Phase 1b — Unified `bookkit` CLI

**Status:** ⬜ **OPEN — implement next**  
**Risk:** medium (script surface; do not break existing build/doctor)  
**Depends on:** Phase 1 done; decisions D4  
**Out of scope:** repo split, showcase move, spike harvest, skill text rewrites (phase4)

---

## Goal

One entrypoint `scripts/bookkit` exposes layout **and** gated graphics/prepress/validate verbs so agents and humans never hunt ad-hoc scripts.

## Target surface (normative)

```text
bookkit doctor [--root DIR]
bookkit init TARGET_DIR
bookkit build|watch|ua [--root DIR] [--entry PATH] [--out PATH]
bookkit print [--root DIR] [--entry PATH] [--out PATH]   # wire print-pdfx; no stub

bookkit validate
    --typ PATH --catalog PATH
    [--content PATH] [--accept PATH] [--freeze PATH]
    [--genre-minima PATH] [--root DIR] [--font-path PATH]
    [--profile smoke|production] [--whitelist-mode creative|strict]
    [--exception-no-brief] [--skip-compile]

bookkit catalog check
    # wraps toolset/form-catalog/scripts/check_forms.py

bookkit prepress dpi --paths <paths…>
    # wraps scripts/check-image-dpi.py
bookkit prepress pdfx …
    # wraps scripts/print-pdfx.sh (same args or documented subset)

bookkit graphics vision
    --backend gemini|agy
    --brief PATH | --prompt TEXT
    --out PATH
    [--preview PATH] [--model …]   # backend-specific passthrough
bookkit graphics refine
    --vision PATH --brief PATH --out PATH [--notes TEXT]
    # wraps graphics-refine-agy.sh (agy backend only for now; document)
bookkit graphics spike-init <slug> [recipe-id]
    # wraps graphics-spike-init.sh
bookkit graphics manifest --unit SLUG
    # print/check domains/medical/assets/<slug>/MANIFEST.md exists; list files vs CANONICAL policy (lightweight)
```

**Deprecated (keep working as thin wrappers or document redirect):**

- Direct `python3 toolset/compose/scripts/run_validate.py` — still valid; CLI is preferred for agents  
- Direct `./scripts/graphics-*.sh` — still valid; CLI preferred  

---

## Implementation steps

### 1. Extend `scripts/bookkit` without breaking existing commands

- [ ] Preserve current: `doctor`, `init`, `build`, `watch`, `ua`, `brief-check`
- [ ] Add nested command parsing for `graphics`, `prepress` (and top-level `validate`, `catalog`, `print`)
- [ ] Use `Root` as today (repo of the script); honor `--root` for consumer projects where applicable
- [ ] `validate` / `graphics` that touch domain assets may require **studio root** when paths are monorepo-relative — document in usage()

### 2. `bookkit validate` → existing Python engine

- [ ] Forward flags to `python3 "$Root/toolset/compose/scripts/run_validate.py"` (or `validate/cli.py`)
- [ ] Default `--catalog` to `$Root/toolset/form-catalog/core/forms.yaml` if omitted
- [ ] Default `--font-path fonts` / repro flags consistent with compose README
- [ ] Exit code: pass through Python process (0/1)
- [ ] Smoke:

```bash
./scripts/bookkit validate \
  --typ toolset/compose/fixtures/pass_minimal/chapter.typ \
  --content toolset/compose/fixtures/pass_minimal/content.md \
  --accept toolset/compose/fixtures/pass_minimal/accept.md \
  --genre-minima toolset/compose/fixtures/pass_minimal/genre-minima.yaml \
  --root . --skip-compile
```

### 3. `bookkit print` + `prepress`

- [ ] Replace print stub with call to `scripts/print-pdfx.sh` (document required tools: typst, gs)
- [ ] `prepress dpi` → `python3 scripts/check-image-dpi.py …`
- [ ] `prepress pdfx` → alias or subset of print pipeline
- [ ] If full print integration is large, minimum: **remove “deferred” message** and invoke existing scripts with clear errors if `gs` missing

### 4. `bookkit catalog check`

- [ ] Run `python3 "$Root/toolset/form-catalog/scripts/check_forms.py"` (no CLI args; checks `core/forms.yaml` vs `VERSION` from catalog dir)

### 5. `bookkit graphics *` wrappers

| Subcommand | Wrapper target | Notes |
|---|---|---|
| `vision --backend gemini` | `scripts/graphics-vision-gemini.sh` | `--brief`/`--prompt`, `--out` |
| `vision --backend agy` | `scripts/graphics-vision-agy.sh` | optional `--preview` |
| `refine` | `scripts/graphics-refine-agy.sh` | requires `--vision --brief --out` |
| `spike-init` | `scripts/graphics-spike-init.sh` | positional slug [recipe] |
| `manifest` | small bash | check MANIFEST + list dir; warn if > canonical keep set |

- [ ] Usage text lists backends and that vision/refine are **gated** (claim audit / caps live in skill — CLI does not auto-loop)
- [ ] Do **not** implement multi-round refine loops in CLI
- [ ] `--help` for `bookkit graphics` always works offline

### 6. Docs touch (minimal — full skill rewrite in phase4)

- [ ] Update usage in `scripts/bookkit` header comment
- [ ] One paragraph in `docs/CONSUMER.md` under compose: “preferred: `./scripts/bookkit validate …`”
- [ ] One line in `toolset/compose/README.md` pointing to bookkit CLI
- [ ] Optional: `scripts/bookkit` VERSION bump comment 0.1.0 → 0.1.1 if you treat surface as API

### 7. Tests

- [ ] Add shell smoke in `toolset/tests/test_toolset.sh` or new `toolset/tests/test_bookkit_cli.sh`:
  - `bookkit --help` / unknown command fails
  - `bookkit graphics --help`
  - `bookkit validate … --skip-compile` on pass_minimal fixture
  - `bookkit catalog check` if script is non-interactive

---

## Existing script flag reference (do not invent new required flags)

**graphics-vision-gemini.sh:** `--out` + (`--brief` | `--prompt`) `[--model] [--max-polls]`  
**graphics-vision-agy.sh:** `--brief --out` `[--preview] [--model]`  
**graphics-refine-agy.sh:** `--vision --brief --out` `[--notes]`  
**graphics-spike-init.sh:** `<slug> [recipe-id]`  
**run_validate.py:** see `toolset/compose/README.md` / `validate/cli.py`

---

## Exit criteria

- [ ] All commands in “Target surface” either implemented or explicitly documented as deferred with reason
- [ ] Existing `bookkit build/doctor/init` still green on starter
- [ ] Validate fixture green via `bookkit validate`
- [ ] `bookkit graphics --help` documents backends
- [ ] No second top-level CLI binary introduced
- [ ] Phase status in `README.md` updated to done for 1b

## Done definition for commit message (suggestion)

```text
feat(bookkit): unify validate, prepress, and graphics under one CLI

Wire compose validate, print/prepress helpers, and graphics vision/refine
wrappers into scripts/bookkit per workspace-split phase1b (decision D4).
```
