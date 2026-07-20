# Feasibility note

- **chapter_id:** V-SeptArthritis / `bakterielle-arthritis-kurz`
- **brief_path:** `domains/medical/briefs/v-sept-arthritis.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (`cave` / `memo` / `ddx-box`)
- **genre:** kl-kurz compact profile (gatekeeper + mini illness script)
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-v-bakterielle-arthritis-kurz.md`
- **brief_class:** exploration
- **author:** tech-feasibility (Wave 3 V-Sept exploration)
- **date:** 2026-07-20

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener | `mapped` | `chapter-opener` | Title + lead from Untertitel. Compact kl-kurz. |
| **S1** Gatekeeper thresholds | `mapped` | `cave` | **Early first body form.** Exact thresholds copy-through: Fieber ≥ 38,5 °C + AZ → 112; NWB → ED noch heute; Hochrisiko → ED binnen Stunden; gesicherte nicht-infektiöse Dx → Treat + Safety-Netting. IV-4 quiet. One gatekeeper only. |
| **S2** Big Picture + worst-case | `mapped` | `callout` or `key-concept` | Prefer `key-concept` (term: Big Picture) or warning/info `callout` with worst-case emphasized. |
| **S3** Illness Script Who/What/How | `mapped` | `memo` or `key-concept` | Compact three-line/three-bullet structure. Alternative: 3-tile `feature-grid` — optional; kl-kurz prefers single `memo` to save mass. |
| **S4** Red Flags | `mapped` | `styled-table` | Kriterium / Dringlichkeit / Aktion; include pediatric rows as in content. |
| **S5** Anamnesefragen | `approx` | BASIS list under heading or nested in `callout` | No dedicated question-strip form. |
| **S6** Absolute KI | `mapped` | `cave` | Second cave OK — distinct role (technique bans vs gatekeeper triage). Keep single, not multi-cave spam. |
| **S7** Labor/Score | `approx` | `side-note` or short BASIS note | No invented cut-offs; CRP/Leukos non-exclusion; Kocher not adult DA tool. |
| **S8** Red Herrings | `mapped` | `callout` | Three traps short. |
| **S9** DDx minimal | `mapped` | `ddx-box` | Short comparison bullets/rows. |
| **S10** D-RISC | `mapped` | `styled-table` | Situation + R/I/S + C columns. |
| **S11** Semantic Qualifiers | `approx` | `memo` or BASIS trailing | Quiet. |
| **S12** Verweise + Quellen | `approx` | `section-break` + BASIS lists | Epi only non-triage footnote if rendered. |
| **S13** Critical Claims | `mapped`* | trailing BASIS | Audit copy-through + HiL info callout. |

### Distinct-forms forecast

`chapter-opener`, `cave`, `key-concept`/`callout`, `memo`, `styled-table`, `ddx-box`, `section-break`

→ ≥4 distinct forms; early gatekeeper; not table-only.

## Catalog gaps to file

| gap / planned id | severity | pilot disposition |
|---|---|---|
| **`decision-table`** | medium | S4 stays `styled-table`; not blocking exploration pilot |
| threshold chip strip | low | cave body carries exact numbers |

## Spike recommended?

- [x] **no**
- [ ] yes

**Rationale:** Compact kl-kurz maps cleanly to stable forms used in III-5 path; thresholds are content-native.

## Ready for Media Accept?

- [x] **yes** (exploration Accept → exploration pilot compose only)
- [ ] no

**Accept focus:** (1) exact ≥ 38,5 °C / NWB / Hochrisiko thresholds visible in gatekeeper; (2) no CRP false-reassurance numbers; (3) absolute KI cave; (4) D-RISC table copy-through.

## Compose binding (post-Accept exploration pilot)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `cave` |
| S2 | `key-concept` or `callout` |
| S3 | `memo` |
| S4 | `styled-table` |
| S5 | BASIS list |
| S6 | `cave` |
| S7 | `side-note` |
| S8 | `callout` |
| S9 | `ddx-box` |
| S10 | `styled-table` |
| S11–S12 | BASIS + `section-break` |
| S13 | trailing Audit BASIS |

Header pins: `catalog_version: 0.1.0`. Claims copy-through. No freeze promote.
