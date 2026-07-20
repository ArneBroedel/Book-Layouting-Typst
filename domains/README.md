# Domain layers (Produkt B — Übergang)

Spezialisierungen **über** der Layout-Plattform (Produkt A).  
Nicht Teil der Foundation; **Kandidat für eigenes Repo** (siehe `devtracks/PRODUCT-BOUNDARIES.md`).

| Ordner | Domäne | Inhalt |
|---|---|---|
| `medical/` | Medizin / Kursbuch-Media | Genre-Rezepte, Media-Brief-Templates, Gold-Briefs, domain skill |

**Regel:** Neue medizin-spezifische Logik → hier. Generische bookkit/compose/catalog-core → `packages/` / `toolset/`.
