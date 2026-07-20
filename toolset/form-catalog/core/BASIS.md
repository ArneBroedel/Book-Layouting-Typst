# Allowed non-catalog Typst (production compose)

Whitelist **beyond** form-catalog `stable` forms. Keep short.

| Allowed | Notes |
|---|---|
| `#heading` / markup `=`, `==` | structure |
| paragraphs, soft breaks | body |
| `#emph`, `#strong`, lists | inline/list |
| `#pagebreak` (sparingly) | |
| `#import` of bookkit / bookkit-didactics | package surface only |
| `#figure` with alt when needed | |

**Forbidden in production compose** (unless form wraps them): raw `#rect`, decorative `#place` layouts, ad-hoc `#grid` page chrome, uncatalogued show rules that redefine book chrome.
