# Form Lab kickoff — `<lab-id>`

- **date:**
- **mission_class:** lab-learning (not production default)
- **skill:** form-lab-orchestrator
- **Human decisions:** D1–D8 below
- **track:** `devtracks/chapter-form-lab/`

## Content

| field | value |
|---|---|
| lab_id | |
| chapter title | |
| content pin path(s) | |
| prior pilots to **not** copy as SoT (optional reference) | |

## Decisions

| ID | Question | Decision |
|---|---|---|
| D1 | Anchor chapter | |
| D2 | Second chapter / portfolio order | deferred / slug |
| D3 | Pass D diagram | waived / include |
| D4 | Min craft rounds | (default 3) |
| D5 | Max craft rounds | (default 12) |
| D6 | Session model | new session per pass (default) |
| D7 | H-Pass after each optimum | yes / agent-optimum + Human at comparison |
| D8 | Pass R atom gen budget | |

## Autonomy

- **Default: L2 autodrive-to-complete** — after freeze, run full T→C→V→R→matrix→**S best-of fusion**→(next lab)→**harvest** without stopping at handoff  
- OR executes PW/PC/CM/SY in-session with durable critiques/board (unless user opts route-only)  
- Serial passes: T → C → V → R → (D?) → comparison → S → **harvest**  
- Studio: situation **9** hands off here; Studio **never** runs the medium craft stack itself  
- Opt-out: user says `route-only` / `Orchestrator only` / `stop after handoff`

## Harvest gate (COMPLETE)

Terminal COMPLETE requires:

1. Craft stack complete enough for matrix + S (or residual notes)  
2. **`harvest/form-vocabulary.md`** + **`harvest/production-bridge.md`** (lab- or portfolio-level)  
3. Board cells `harvest=done` (or explicit waiver text)

Templates: `_templates/form-vocabulary.md`, `production-bridge.md`, `human-s-rank.md`, `sr-log.md`.

## First route after freeze

1. Freeze `pins.md`  
2. Copy from `_templates/`: medium-rules for T/C/V/R/**S**, HAND-OFF, **comparison-matrix.md** → `comparison/matrix.md` (fill later); optional human-s-rank + sr-log stubs  
3. Confirm workers load SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` (R **and** V glyphs; S omit-is-win)  
4. **Default L2:** start Pass T craft immediately (in-session PW+PC); continue C→V→R→matrix→S best-of without user pause  
5. After all portfolio labs S: run **L7 harvest** before marking COMPLETE  
6. Opt-out only: stop after HAND-OFF for external Pass T Worker session
