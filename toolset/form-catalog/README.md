# form-catalog (Produkt A — platform core)

Generisches Form-Vokabular und Schema für die Layout-Plattform.
Catalog = **Kuration** existierender bookkit-APIs + `planned` gaps (CONSENSUS ADR 8).

## Layout

```text
toolset/form-catalog/
  README.md
  VERSION                 ← pin this (or the version: field in forms.yaml)
  core/
    forms.yaml            ← stable / planned / deprecated forms
    BASIS.md              ← allowed non-catalog Typst in production
    GAP-PROCESS.md        ← domain gap → planned → stable
    ANTI-PATTERNS.md      ← generic compose anti-patterns
    genre-recipes/        ← cross-domain only; medical → domains/medical/recipes/
  scripts/
    check_forms.py        ← structural sanity check (optional CI)
```

**Medical genre recipes** leben unter `domains/medical/recipes/` und **erweitern** core,
ersetzen ihn nicht. Keine Kursbuch-Content-Pfade in core.

Validator (compose) lädt: `core/forms.yaml` (+ optional domain overlay).

## VERSION / pin policy

| File | Role |
|---|---|
| `toolset/form-catalog/VERSION` | Single-line catalog version string for consumers to pin |
| `core/forms.yaml` → `version:` | **Must match** `VERSION` exactly |

**Current:** `0.1.0-dev` — Wave-1 curation; not a release pin.

| When | Action |
|---|---|
| Draft / Wave work, recipes incomplete | keep `0.1.0-dev` |
| First consumer-ready freeze (stable set + gap process + BASIS agreed) | bump to `0.1.0` in **both** files |
| Add/remove/rename form ids or change `stable` semantics | minor or major SemVer bump; document in commit |
| Typos / purpose wording only | patch or stay on `-dev` while unreleased |

Consumers should pin catalog `VERSION` alongside bookkit package version
(`packages/bookkit` → `typst.toml`, currently `0.1.0`).
Do **not** treat `main` tip as a pin.

Full consumer setup (imports, fonts, validate, skills): [`docs/CONSUMER.md`](../../docs/CONSUMER.md).

## Status meanings

| Status | Meaning |
|---|---|
| `stable` | Real public function exported by `bookkit` or `bookkit-didactics` |
| `planned` | Accepted gap; not production-legal until implemented + promoted |
| `deprecated` | Was stable; do not use in new compose |

## Checks

```bash
python3 toolset/form-catalog/scripts/check_forms.py
```

## Related

- Spec/plan: `devtracks/form-catalog/`
- Boundaries: `devtracks/PRODUCT-BOUNDARIES.md`
- Packages: `packages/bookkit/`, `packages/bookkit-didactics/`
