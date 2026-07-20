# Accept record (Media)

- **chapter_id:**
- **brief_path:**
- **feasibility_path:**
- **spike_paths:** (if any)
- **date:**
- **media_reviewer:**

## Decision

| item | accept \| revise \| reject | note |
|---|---|---|
| overall | | |
| section … | | |

## If revise

What must Tech change before compose?

## Pedagogy / scan checks (Media)

From `media-brief/references/design-reasoning.md` §5 — tick or note fail → usually **revise**:

- [ ] Main job / gatekeeper findable in first screenful (genre-dependent)
- [ ] Action/decision path louder than links/sources
- [ ] Order-critical steps read as ordered
- [ ] Urgency weights from Brief not flattened in spike/approx
- [ ] No claim rewrite or new clinical thresholds in layout

## Content freeze pin (production)

- [ ] Freeze record verified (`content_status: frozen`)
- [ ] `content_revision` on brief matches freeze (`git:…` or `sha256:…`)
- [ ] `brief_class` is **production** (not exploration)

## Production compose authorized?

- [ ] **yes** — compose may run with this brief + feasibility **and** freeze pin
- [ ] **no**

Exploration briefs: leave production compose **no**.
