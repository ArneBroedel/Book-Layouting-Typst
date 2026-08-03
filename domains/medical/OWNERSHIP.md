# Ownership — medical domain

| | |
|---|---|
| **Produkt** | B — Domain Media (Medizin) |
| **Heute** | Pfad in Layout-Repo: `domains/medical/` |
| **Ziel-Repo (Name TBD)** | z. B. `kursbuch-media` / `bookkit-domain-medical` |
| **Darf ändern** | recipes, briefs, domain skill, overlay |
| **Darf nicht** | `packages/bookkit` Foundation ohne Plattform-Track; Content-MD als SoT; Print-Prepress oder Astro-App-SoT (A / W) |
| **Pinnt** | bookkit SemVer, form-catalog core `version` |
| **Skill SoT** | `domains/medical/skill/media-brief/`, `domains/medical/skill/medical-graphics/` — discovery symlinks only under `.github/skills/`, `.grok/skills/`, `toolset/skill-pack/` |
| **Domain assets** | `domains/medical/assets/<slug>/` (SVG first; manifest via `*.graphics.md`) |
| **Accept channel_scope** | `print` \| `web` \| `both` on Accept (ADR 53); feed chapter release package under `contracts/` |

## Harvested Typst modules

| Path | Role |
|---|---|
| `lib/typst/` | Stable KL graphic modules (SoT); spikes re-export |

See `lib/typst/README.md`.
