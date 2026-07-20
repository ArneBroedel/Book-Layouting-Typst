# form-catalog (Produkt A — platform core)

Generisches Form-Vokabular und Schema für die Layout-Plattform.

## Layout

```text
toolset/form-catalog/
  README.md
  core/
    forms.yaml          ← stable generic + shared forms (Track form-catalog)
    genre-recipes/      ← only cross-domain recipes if any; medical → domains/medical/recipes/
    BASIS.md            ← allowed non-catalog Typst basis (heading, par, …)
  VERSION               ← catalog schema/content version for consumers to pin
```

**Medical genre recipes** leben unter `domains/medical/recipes/` und **erweitern** core,
ersetzen ihn nicht.

Validator (compose) lädt: `core/forms.yaml` (+ optional domain overlay).
