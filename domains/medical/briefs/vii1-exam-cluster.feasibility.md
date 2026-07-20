# Feasibility note

- **chapter_id:** VII-1 / `exam-cluster-integration`
- **brief_path:** `domains/medical/briefs/vii1-exam-cluster.brief.md`
- **catalog_version:** `0.1.0` (pin from `toolset/form-catalog/VERSION`)
- **bookkit_version:** `0.1.0`
- **bookkit-didactics:** `0.1.0` (`memo`, `cave` optional; **not** forced `clinical-case` / `mc-question`)
- **genre:** integration / exam-drill
- **content_source (C, read-only):** `/home/arneb/repos/company/Kursbuch5/content/chapters/staging/pilots/2026-07-welle-03-final-10/chapter-vii1-exam-cluster-integration.md`
- **author:** tech-feasibility (Wave 5 E2E VII-1)
- **date:** 2026-07-20
- **brief_class:** exploration

## Sections

| brief_section_id | status | form_id or gap_name | notes |
|---|---|---|---|
| **S0** Opener | `mapped` | `chapter-opener` | Title + lead: transfer drill, **no new facts**; wave source list quiet in lead. |
| **S1** Spielregeln | `mapped` | `callout` (tone warning) | 5 rules as short list. Alt: `memo` if Media wants merksatz tone — default `callout`. |
| **S2–S11** Stationen 1–10 | `approx` | **`callout`** per station (preferred) | **API check `clinical-case`:** fields are `anamnese` / `befund` / `diagnose` / `therapie` — **misfit** for vignette / fangfrage / muster / verweise. Using clinical-case would force false labels or dump everything into `body` (heavy chrome, weak structure). **Compose binding: `callout(title: [Station N — …])`** with internal hierarchy: Vignette → Fangfrage → Aufgabe → **Musterlösung** (bold/emph) → Verweise (smaller/quiet). Optional `card` if Media Accepts equal-weight panels; default callout for scannable titled blocks. Do **not** use `mc-question` (content is free-response, not options). |
| **S12** P0-Recht | `mapped` | `memo` or `callout` | Stichworte + `→ I-4`. Prefer `memo` for checklist feel. |
| **S13** P0-Notfall | `mapped` | `memo` or `callout` | Stichworte + `→ III-2` / `→ III-5-Cauda`. |
| **S14** Treat-vs-Refer | `mapped` | `styled-table` | Lage · C · Master — copy-through content table. |
| **S15** Quellen | `mapped` | `styled-table` | Kapitel · Datei (Welle). Intro sentence: no new high-stakes facts. |
| **S16** Critical Claims | `mapped`* | BASIS note + optional trailing table | **n/a – integration** first; optional action-cluster → source chapter table (verweis only). HiL callout. |

### Distinct-forms forecast

`chapter-opener`, `callout` (rules + 10 stations), `memo` (×2 checklists), `styled-table` (×2–3)

→ ≥3–4 distinct forms; stations scannable; not essay wall. OK for exploration pilot.

### API decision log (stations)

| option | verdict |
|---|---|
| `clinical-case` | **reject for this pilot** — field schema mismatch; 10× heavy case chrome |
| `mc-question` | **reject** — no options/answers in content |
| `callout` | **accept** — title = Station N + short name; body structured |
| `card` | optional alt if equal elevation preferred; not required |

## Catalog gaps to file

| gap / planned id | severity | why not silent substitute | pilot disposition |
|---|---|---|---|
| **exam-station panel** (vignette/fangfrage/solution/links) | medium | 10× repeated structure; hierarchy manual inside callout | **Named wishlist**; compose approx with callout. Do not invent stable id this round. |
| solution-loud dual chrome | low–medium | emphasis via typography inside callout | approx OK |

## Spike recommended?

- [x] **no**
- [ ] yes — goal:

**Rationale:** Station layout is repetitive but callout structure is well-understood; no new package API. Spike only if Media rejects scannability after first compose preview.

## Ready for Media Accept?

- [x] **yes**
- [ ] no — blockers:

**Accept focus:** (1) stations as `callout` not `clinical-case`; (2) Musterlösung visually louder than Verweise; (3) no new clinical facts; (4) claims n/a note.

## Compose binding (post-Accept only)

| Section | Compose form(s) |
|---|---|
| S0 | `chapter-opener` |
| S1 | `callout` (Spielregeln) |
| S2–S11 | ten × `callout(title: [Station N — …])` structured body |
| S12 | `memo` (P0-Recht) |
| S13 | `memo` (P0-Notfall) |
| S14 | `styled-table` (Treat-vs-Refer) |
| S15 | `styled-table` (Quellen wave chapters) |
| S16 | BASIS n/a note + optional table + HiL `callout` |

Header pins: `catalog_version: 0.1.0`. Stable forms only. Claims: **copy-through / n/a** — no new RF operationalization.
