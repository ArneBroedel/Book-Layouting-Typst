# Accept record (Media)

- **chapter_id:** VII-1 / `exam-cluster-integration`
- **brief_path:** `domains/medical/briefs/vii1-exam-cluster.brief.md`
- **feasibility_path:** `domains/medical/briefs/vii1-exam-cluster.feasibility.md`
- **spike_paths:** none
- **date:** 2026-07-20
- **media_reviewer:** media-designer (Wave 5 E2E VII-1 exam-cluster)
- **brief_class:** exploration

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| **overall** | **accept** | Transfer-drill ideal reachable: rules → 10 scannable stations → checklists → sources; pilot compose authorized. |
| S0 opener | accept | Explicit „no new facts“ in lead. |
| S1 Spielregeln | accept | `callout` rules list; before stations. |
| S2–S11 stations as `callout` | **accept** | **Prefer callout over clinical-case** — API mismatch confirmed; Media concurs. Structure inside each callout: Vignette / Fangfrage / Aufgabe / Musterlösung (loud) / Verweise (quiet). |
| clinical-case path | **reject** | Heavy + wrong field labels for this content shape. |
| mc-question path | **reject** | Content is free-response drill. |
| S12–S13 P0 memos | accept | Recht + Notfall checklists after stations. |
| S14 Treat-vs-Refer table | accept | Synthesis louder than source meta. |
| S15–S16 sources / claims n/a | accept | Wave chapter table; **Critical Claims: n/a – integration**. |
| exam-station wishlist | accept (defer) | Not blocking pilot. |

## If revise

*(not applicable — overall accept)*

Would have blocked: essay wall without station chrome; new RF invented in layout; clinical-case forced labels; sources before stations; equal loudness Verweise vs. Musterlösung.

## Production compose authorized?

- [x] **yes** — compose may run with this brief + feasibility
- [ ] **no**

### Media notes for Compose

1. **All 10 stations in body** as titled `callout` blocks (default Author Q1).
2. Inside each station: **Musterlösung louder** (bold / emph actions) than Verweise (quiet trailing line).
3. **No new clinical facts** — copy-through vignettes and actions from content only.
4. Claims block: lead with **n/a – integration**; optional verweis-anchor table only.
5. Form whitelist: S0 `chapter-opener` · S1 `callout` · S2–S11 `callout` ×10 · S12–S13 `memo` · S14–S15 `styled-table` · S16 trailing BASIS + HiL.
