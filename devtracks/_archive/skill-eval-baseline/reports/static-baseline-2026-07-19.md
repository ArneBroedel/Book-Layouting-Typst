# Skill eval baseline — static fallback (2026-07-19)

## Environment

- Full `skill-creator` harness (`run_eval.py`) requires external LLM API keys.
- This environment: **no** `ANTHROPIC_API_KEY` / `OPENAI_API_KEY` / Gemini keys visible for grading agents.
- Honest fallback: `quick_validate.py` structural validation + manual description audit.

## Commands run

```bash
python3 .github/skills/skill-creator/scripts/quick_validate.py .github/skills/typst-writer
python3 .github/skills/skill-creator/scripts/quick_validate.py .github/skills/typst-extension
python3 .github/skills/skill-creator/scripts/quick_validate.py toolset/skill-pack/bookkit
```

## Results

| Skill | quick_validate | Notes |
|---|---|---|
| typst-writer | **valid** | Description triggers .typ create/edit/debug; long harvested sections present |
| typst-extension | **valid** | Package/`@preview` triggers intact |
| bookkit (new) | **valid** | Package-specific skill; description names package paths + design-brief |

## Description / trigger review (manual)

- No contradiction found between typst-writer §15 architecture and bookkit skill assembly-order rules (both require cover → setup-pages; chapter-opener owns level-1).
- bookkit skill explicitly defers syntax to typst-writer (avoids prompt fork).
- Gap closed by toolset: package API was previously only in monorepo paths — now skill documents `/packages/bookkit/lib.typ`.

## Method note for KNOWLEDGE-MAP

After harvesting: re-run `quick_validate.py` always; run full eval harness when API budget available and store under `devtracks/skill-eval-baseline/reports/`.

## Status

**Baseline recorded via static path.** Full graded scores deferred until API-capable env; not a silent skip.
