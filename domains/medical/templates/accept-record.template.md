# Accept record (Media)

- **chapter_id:**
- **brief_path:**
- **form_spec_path:** (if any — `*.form-spec.md`)
- **feasibility_path:**
- **graphics_decision_path:** (if any — `*.graphics.md`)
- **quality_packet_path:** (if any — `*.quality-packet.md`)
- **spike_paths:** (if any; include A/B candidates)
- **date:**
- **media_reviewer:** (role **AX** — must **not** be sole builder of units under Accept)

## Quality CLEAN gate (mandatory for didactic chapter PDF)

Exploration does **not** waive this for anything presented as a quality result.

- [ ] Design CLEAN for every non-prose unit (`*.design-critique.md` status clean)
- [ ] Visual CLEAN for every graphic unit (`*.visual-critique.md` status clean on **latest** PNG set)
- [ ] Quality packet linked (or equivalent table filled)
- [ ] Page PNGs listed and were inspected (not compile-only)
- [ ] **No** self-accept: reviewer did not sole-author the implement under review

If any box unchecked → overall must be **revise** or **reject**, never accept.

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| overall | | |
| section … | | |

## Graphic winners (if Decision Note / A/B)

| unit_id | track | accepted winner (code\|asset\|hybrid) | form_spec Must-see met? | free-vision proximity | harvest must met/waived | embed path (module/asset) | note |
|---|---|---|---|---|---|---|---|
| | free-vision-ambition\|grammar-only\|none | | yes/no | yes\|partial\|no\|n/a | yes\|waived\|n/a | | |

### Free-vision proximity outcomes (Media)

| Situation | Decision |
|---|---|
| Ambition + pin-monotone code (no harvest port) | **revise** (Graphics: port harvest) |
| Ambition + hierarchy code or asset PASS | **accept** (if other rubric OK) |
| Grammar-only + clean code | **accept** (proximity N/A) |

## If revise

What must Tech / Graphics / Media (Form Spec) change before compose?

## Pedagogy / scan checks (Media)

From `media-brief/references/design-reasoning.md` §5 — tick or note fail → usually **revise**:

- [ ] Main job / gatekeeper findable in first screenful (genre-dependent)
- [ ] Action/decision path louder than links/sources
- [ ] Order-critical steps read as ordered
- [ ] Urgency weights from Brief not flattened in spike/approx
- [ ] **Form Spec Must-see** met by winner (when Form Spec exists)
- [ ] Graphic / free-vision candidates reviewed when present (ideal proximity + learner job)
- [ ] **If track = free-vision-ambition:** winner shows free-vision proximity (not pin-monotone)
- [ ] Harvest must-cues listed as met or explicitly waived with reason
- [ ] Embed path filled for Tech (module and/or asset)
- [ ] Production path after vision: recreate / refine / accept-asset noted if Graphics ran
- [ ] Asset winner: claim audit PASS + DPI/manifest gates (playbook 06)
- [ ] Design Contract atoms still hold on the page (no uncontracted chrome)
- [ ] No code-leak / overflow / unreadable craft defects (Visual CLEAN)
- [ ] No claim rewrite or new clinical thresholds in layout (incl. images)

## Content freeze pin (production)

- [ ] Freeze record verified (`content_status: frozen`)
- [ ] `content_revision` on brief matches freeze (`git:…` or `sha256:…`)
- [ ] `brief_class` is **production** (not exploration)

## Exploration compose authorized?

- [ ] **yes** — pilot / exploration layout under smoke/creative validate (not production)
- [ ] **no**

Exploration briefs: set exploration **yes** when Media accepts the pilot for compose.  
Validate will report *exploration compose authorized* — never production.

## Production compose authorized?

- [ ] **yes** — compose may run with this brief + feasibility **and** freeze pin
- [ ] **no**

Exploration briefs: leave production compose **no**.  
Only production **yes** authorizes freeze-gated production quality.

### Media notes for Compose

1.
