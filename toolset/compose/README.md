# compose (Produkt A — technical engine)

Domain-agnostic composition tooling for the platform.

## Layout

```text
toolset/compose/
  README.md
  validate/           ← whitelist, claims, minima, compile, post-hoc, accept-gate
  scripts/
    run_validate.py   ← preferred CLI entry
  fixtures/           ← durable pass/fail fixtures (no live Kursbuch)
  tests/
    test_validate.py  ← stdlib unittest
  templates/          ← feasibility note template (generic)
  spikes/README.md    ← how to run a spike build
```

**Does not own:** medical briefs, genre recipes → `domains/medical/`.  
**Consumes:** `toolset/form-catalog/core` + optional domain overlay / minima path via CLI.

## Validator (Wave 3.1–3.2)

Fail-fast, no auto-heal. Content path and genre minima are **caller-supplied**
(no hardcoded Kursbuch tree).

### Checks (v0)

| Check | Severity | Notes |
|---|---|---|
| catalog load | hard | `forms.yaml` must have `version` |
| whitelist | hard | production forms ⊆ **stable** catalog; planned/unknown hyphenated → fail |
| genre minima | hard if path given | `distinct_forms_min`, early gatekeeper, forbidden sole forms |
| claims strict | hard if section present | Critical Claims bullets must appear in `.typ` (normalized) |
| body soft | warn | extreme typ/content length ratio — no hard-fail by default |
| compile | hard if run | `typst compile --root … --ignore-system-fonts --font-path …` |
| post-hoc intent | info | ordered list of catalog forms found |
| accept-gate | hard | accept authorized **or** `--exception-no-brief` (smoke only) |

### Run validate

From **repo root**:

```bash
python3 toolset/compose/scripts/run_validate.py \
  --typ toolset/compose/fixtures/pass_minimal/chapter.typ \
  --content toolset/compose/fixtures/pass_minimal/content.md \
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept toolset/compose/fixtures/pass_minimal/accept.md \
  --genre-minima toolset/compose/fixtures/pass_minimal/genre-minima.yaml \
  --root . \
  --font-path fonts

# Smoke without Media accept (not a quality bar):
python3 toolset/compose/scripts/run_validate.py \
  --typ path/to/chapter.typ \
  --catalog toolset/form-catalog/core/forms.yaml \
  --exception-no-brief \
  --skip-compile

# Domain minima example (path only — engine does not hardcode this file):
python3 toolset/compose/scripts/run_validate.py \
  --typ path/to/chapter.typ \
  --content path/to/content.md \
  --catalog toolset/form-catalog/core/forms.yaml \
  --accept path/to/accept.md \
  --genre-minima domains/medical/recipes/notfall-karte.minima.yaml \
  --root .
```

Also: `python3 toolset/compose/validate/cli.py …`  
Requires **PyYAML** for full YAML (`pip install pyyaml`); a minimal fallback parser covers the catalog/minima shapes used here.

Exit code: `0` all required checks pass; `1` any hard failure.

### Tests

```bash
python3 -m unittest discover -s toolset/compose/tests -v
```

Fixtures under `toolset/compose/fixtures/`:

| Fixture | Expected |
|---|---|
| `pass_minimal` | green (whitelist + claims + accept + minima; compile if typst present) |
| `fail_unknown_form` | red — planned `decision-table` + `mystery-widget` |
| `fail_no_accept` | red — accept not authorized |
| `fail_claims` | red — critical claims missing in `.typ` |

## Related

- Spec/plan: `devtracks/compose-pipeline/`
- Consensus: `devtracks/CONSENSUS-v0.md`
- Boundaries: `devtracks/PRODUCT-BOUNDARIES.md`
- Catalog: `toolset/form-catalog/`
- Skill: `toolset/skill-pack/compose-chapter/`
