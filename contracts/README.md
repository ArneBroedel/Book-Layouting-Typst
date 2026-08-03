# Shared contracts (C · B · A · W)

**SoT for multi-product coupling** — not presentation code.  
Policy: [`devtracks/PRODUCT-BOUNDARIES.md`](../devtracks/PRODUCT-BOUNDARIES.md) v0.3 (ADR 50–59).

| Contract | Consumed by | Engine |
|---|---|---|
| Content revision pin | B, A, W | `toolset/compose/validate/freeze_gate.py` + release package |
| Chapter release package | Orchestrators, A, W | `toolset/boundaries/` · CLI `bookkit boundaries` |
| Asset accept / MANIFEST | A, W | B policy `domains/medical/assets/CANONICAL.md` |
| Channel scope on Accept | A, W | release package + accept template field |

## Layout

```text
contracts/
  README.md                 # this file
  schemas/
    chapter-release.schema.json
  templates/
    chapter-release.template.yaml
  fixtures/                 # unit-test inputs for the shipped validator
    pass_print_minimal.yaml
    pass_both_channels.yaml
    fail_bad_revision.yaml
    fail_scope_channel_mismatch.yaml
    fail_missing_chapter_id.yaml
```

## CLI (real entry)

```bash
./scripts/bookkit boundaries --help
./scripts/bookkit boundaries check-tree          # OWNERSHIP + product roots
./scripts/bookkit boundaries check-release PATH  # chapter release package
./scripts/bookkit boundaries check               # tree + optional --release
```

## Rules (short)

1. **C** owns content body + freeze pin (`content_revision`).  
2. **B** owns briefs, assets, Accept; Accept carries `channel_scope: print|web|both`.  
3. **A** (print) and **W** (web) consume the same freeze pin + accepted asset IDs — never fork SoT.  
4. Release package is the **orchestration bundle**; it does not replace Freeze, CLEAN, or Accept craft.  
5. Do not put Astro/runtime under `packages/bookkit`; do not put chapter SoT under `domains/`.
