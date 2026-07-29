# Feasibility note

- **chapter_id:** V-Cauda / `cauda-equina`
- **brief_path:** `domains/medical/briefs/v-cauda-equina.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (`clinical-case` / `cave` / `memo` / `ddx-box`)
- **genre:** fallbasiert + illness-script (kl-voll); recipe stubs `domains/medical/recipes/fallbasiert.md`, `lerntext.md`
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-v-cauda-equina.md`
- **brief_class:** exploration
- **author:** tech-feasibility (Wave 3 V-Cauda exploration)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Kapitelstart | `mapped` | `chapter-opener` | Stable. Title + lead (Untertitel). No learning-objectives chrome (Master gatekeeper chapter, not seminar LO list). |
| **S1** Case Study | `mapped` | `clinical-case` | Stable. Early case frame: `title` + `anamnese` + optional `befund` (Red Herring) + free `body` for Setting. **Omit** `diagnose` / `therapie` (Content: keine Fall-Auflösung; API fields default `none` — no empty labels). |
| **S2** Gatekeeper | `mapped` | `cave` | Single early stop after case (≤3-form window with opener+case). CES no PT; 112/ED; absolute KI. One cave only. |
| **S3** Big Picture | `mapped` | `key-concept` | Stable. term = Big Picture / CES; body = mechanism + worst-case + sector boundary. Cross-links as short BASIS lines under box, not competing mass. Alternative Accept-switch: `callout` tone info. |
| **S4** Patientenerklärung | `mapped` | `memo` | Stable. Short plain-language copy-through. |
| **S5–S6** Enabling + Insult | `mapped` | `feature-grid` (2–3 tiles) **or** two `callout`s | Both stable. Prefer `feature-grid` column-count 3 with Enabling / Insult / Manifestation-intro tiles; icons = simple text labels (no FA dependency required). Epi de-emphasized: optional `side-note` one-liner only — not a section hero. |
| **S7** Manifestations poles | `mapped` | `styled-table` | Poles table (dramatisch / Kern / subtil / Trugschluss). Onset/classic as short BASIS par above table. |
| **S8** Red Herrings | `mapped` | `callout` | tone warning/info; 4 short items. |
| **S9** Safety + screening | `approx` | `callout` + BASIS lists | Safety Questions as nested list; objective screening + non-duties as BASIS bullets; tools/scores as short note (no PT score form). No dedicated safety-strip. |
| **S10** Red-Flag-Tabelle | `mapped` | `styled-table` | Same triage columns as III-5 (Kriterium / Dringlichkeit / Aktion). Claims copy-through. Urgency-lane chrome remains planned (`decision-table`) — not required for exploration pilot. Footnote: no Restharn-ml / no PT decompression hours. |
| **S11** DDx | `mapped` | `ddx-box` | Dangerous first; short semantic qualifiers per row/bullet. |
| **S12** HP-Matrix / D-RISC + KI | `mapped` | `styled-table` + `cave` | P1–P3 table; optional second small R/I/S table; **one** KI cave (absolute lumbale Intervention bans). Avoid cave-spam (gatekeeper already used one). |
| **S13** Qualifiers + SBAR | `mapped` | `memo` or `styled-table` + `pull-quote` | Qualifiers compact; SBAR example as `pull-quote` (or quieter `callout`). |
| **S14** Verweise | `approx` | `section-break` + BASIS list | Quiet trailing. |
| **S15** Quellen | `approx` | BASIS heading + list | Trailing only. |
| **S16** Critical Claims | `mapped`* | trailing BASIS | *Non-body.* Audit appendix copy-through; optional HiL `callout` info. |

### Distinct-forms forecast

`chapter-opener`, `clinical-case`, `cave`, `key-concept`, `memo`, `feature-grid`, `styled-table`, `callout`, `ddx-box`, `pull-quote`, `section-break`

→ well above fallbasiert/lerntext stub minima (≥3); case early; teaching extract after case; not table-only.

## Catalog gaps to file

| gap / planned id | severity | why not silent substitute | pilot disposition |
|---|---|---|---|
| **`decision-table`** (already planned) | medium | Urgency lanes for red-flag rows | **Not blocking** — S10 stays `styled-table` like III-5 |
| illness-script triad named form | low | feature-grid approx is fine | No new id this round |
| case vignette-only chrome | low | API already allows omit diagnose/therapie | No gap |

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** All ideal units map to stable forms. Case-first + gatekeeper + tables are proven in III-5 path. Exploration pilot can compose without spike.

## Ready for Media Accept?

- [x] **yes** (exploration Accept → exploration pilot compose only)
- [ ] no — blockers:

**Accept focus:** (1) case before theory with empty diagnose/therapie; (2) single gatekeeper cave after case; (3) epi de-emphasized; (4) red-flag table copy-through vs III-5; (5) no Restharn-ml numbers.

## Compose binding (post-Accept exploration pilot)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `clinical-case` |
| S2 | `cave` |
| S3 | `key-concept` |
| S4 | `memo` |
| S5–S6 | `feature-grid` (3 tiles) |
| S7 | `styled-table` (+ short BASIS) |
| S8 | `callout` |
| S9 | `callout` + BASIS lists |
| S10 | `styled-table` |
| S11 | `ddx-box` |
| S12 | `styled-table` + `cave` (KI) |
| S13 | `memo` + `pull-quote` |
| S14–S15 | `section-break` + BASIS |
| S16 | trailing Audit BASIS |

Header pins: `catalog_version: 0.1.0`, brief/feasibility/accept/content paths. Claims copy-through only. **Not** freeze-gated production promote.
