# Plan — Collaboration Wire Dogfood

**Status:** planned · **not started** · **next residual after trilogy**  
**Spec:** [spec.md](spec.md)  
**Successor:** [quality-packet-soft-gate](../quality-packet-soft-gate/) (blocked until GO)  
**Trilogy index:** [skill-collaboration/README.md](../skill-collaboration/README.md)

---

## 0. Intent (one line)

Prove the post-trilogy wire works in real sit.2 / board resume flows and **decide** whether a soft quality-packet CLI is worth building.

---

## 1. Phases

### Phase 0 — Prep (XS)

| Task | Output |
|---|---|
| Pin Contract + templates rev (date or short git SHA in findings header) | reproducibility |
| Choose content pins for A–C (prefer existing KL/form-lab assets; no new clinical authorship) | path table in findings |
| Choose board slug for C/D: e.g. `dogfood-sit2-<date>` under `toolset/orchestration/book-production/` | slug |
| Optional E: decide retrofit vs greenfield mini board | note |

**Exit:** Scenario matrix ready; no code changes.

---

### Phase 1 — Execute scenarios A–B (S)

| Scenario | Agent mode | Artifacts to capture |
|---|---|---|
| **A** code-only skip | studio sit.2 L0 or L1 short | Form Spec `open_asset_scan=skip`; no MANIFEST; route card |
| **B** required realism | sit.2 L1 | Design CLEAN packet; source-scan; MANIFEST accepted\|gap; no free gen before outcome |

**Checklist per scenario:** copy row into `findings.md` (pass/fail + paths + 1–3 bullet notes).

**Exit:** A/B closed.

---

### Phase 2 — Execute scenarios C–D (S–M)

| Scenario | Agent mode | Artifacts |
|---|---|---|
| **C** multi-unit + board | L1+ or L2; create durable board `scope: single-chapter` | board.md cells; unit rows; chapter macro VC PNG set; quality_packet; Accept or explicit block |
| **D** cold resume | **new session** (or agent instructed “forget chat; board only”) | status script; route.md next_skill; no shadow board |

**Exit:** C/D closed; board path listed in findings.

---

### Phase 3 — Scenario E + F + Phase B decision (S)

| Scenario | Work |
|---|---|
| **E** | Mini multi-chapter board (2 rows) **or** add T3 columns to one sample row of existing board; document usability |
| **F** | Audit Accept ↔ packet ↔ PNG existence; log any Accept-without-packet |

**Decision table (fill in findings):**

| Outcome | When | Action |
|---|---|---|
| **GO** | ≥1 clear Accept/idle with missing/hollow packet **after** good-faith wire use, **or** repeated pattern | Unblock `quality-packet-soft-gate` |
| **NO-GO** | Suite pass; packet discipline holds | Close soft-gate track as cancelled/not-needed (or leave planned-dormant) |
| **DEFER** | Ambiguous / single slip / incomplete suite | Keep soft-gate blocked; schedule re-dogfood |

**Exit:** S3 decision written.

---

### Phase 4 — Hygiene patches only (XS, optional)

Only if suite blocked by:

- wrong field name vs T2 (`open_asset_scan` vs alias)  
- broken relative link  
- missing enum in template comment  

**Do not** implement CLI or redesign CLEAN.

**Exit:** Patch list in findings; S4.

---

### Phase 5 — Harvest & close (XS)

| Task | Detail |
|---|---|
| Update skill-collaboration README residual section | decision + link findings |
| Update soft-gate track status | GO / NO-GO / DEFER |
| Optional: one-line runbook “dogfood residual” | if useful |
| `## Harvested into` footer | paths |
| Archive this track | `git mv` → `_archive/` when S1–S6 met |

**Exit:** Track archived or complete-ready-to-archive.

---

## 2. Findings report skeleton

Create `findings.md` (or `reports/dogfood-YYYY-MM-DD.md`):

```markdown
# Collab wire dogfood — <date>

- Contract pin: …
- Git / template pin: …
- Operator: …

## Scenario matrix

| ID | Status | Evidence paths | Notes |
|---|---|---|---|
| A | | | |
| B | | | |
| C | | | |
| D | | | |
| E | | | |
| F | | | |

## Phase B decision

- Decision: GO | NO-GO | DEFER
- Evidence:
  - …
- Soft-gate track action: unblock | cancel | keep blocked

## Hygiene patches

- (none | list)

## Recommendations (non-binding)

- …
```

---

## 3. Suggested content pins (non-binding)

Prefer **existing** artifacts; swap if missing:

| Scenario | Candidate |
|---|---|
| A | Schema/code unit from explore pilots (no photo) |
| B | Form-lab open-asset monographs (gicht / anaphylaxie assets already licensed) |
| C | Small multi-unit KL chapter already composed, **re-board** under dogfood slug without full re-craft if possible |
| E | Greenfield 2-row board with stub cells (no need for full graphics re-run) |

If re-craft is required for C, cap ambition: **one** multi-unit chapter only.

---

## 4. Acceptance (manual)

1. Findings report complete (S1–S3).  
2. Soft-gate track header reflects decision.  
3. No CLI code landed in this track.  
4. Runtime dogfood board either kept as sample or marked idle in notes.

---

## 5. Effort estimate

| Phase | Effort |
|---|---|
| P0 | XS |
| P1 A–B | S (~½–1 day) |
| P2 C–D | S–M (~1 day) |
| P3 E–F + decision | S |
| P4–P5 | XS |
| **Total** | **~1–2 days** agent time |

---

## 6. Status log

| Date | Note |
|---|---|
| 2026-08-03 | Track opened as post-trilogy residual planning. Implementation (suite run) not started. |

---

## Harvested into

*(fill on completion)*

- …  
