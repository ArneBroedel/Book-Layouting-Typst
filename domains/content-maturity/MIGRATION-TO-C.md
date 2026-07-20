# Migration: content-maturity process → Content-Werk (C)

When split triggers fire (`devtracks/content-maturity/SPLIT-CHECKLIST.md`):

## Move

1. Copy `domains/content-maturity/**` to C (e.g. `editorial/` or `.content-maturity/`).
2. Point C agent skill discovery at the new skill path.
3. Keep **synthetic** fixtures or regenerate in C CI.
4. Real chapter SoT stays wherever C already stores it — never lived in A.

## Keep in Layout repo (A)

| Residual | Why |
|---|---|
| `toolset/compose/validate/freeze_gate.py` + CLI `--profile` / `--freeze` | Production gate |
| Docs in `compose-chapter` / compose README | How to pass production |
| Short pointer README if tree removed | “moved to C” |

## Keep in Domain Media (B)

| Residual | Why |
|---|---|
| `brief_class`, freeze meta on media-brief templates/skill | Production vs exploration |

## Remove from A after move

- Process kit tree (or leave stub README)
- `.github/skills/content-review` and `.grok/skills/content-review` symlinks (or retarget stub)

## Verify

- C: agent produces Review-Report from C fixture
- A: `pass_freeze_production` tests still green
- A platform tests do not require live Kursbuch paths
