# Form Lab kickoff — `<lab-id>`

- **date:**
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
| D2 | Second chapter | deferred / slug |
| D3 | Pass D diagram | waived / include |
| D4 | Min craft rounds | (default 3) |
| D5 | Max craft rounds | (default 12) |
| D6 | Session model | new session per pass (default) |
| D7 | H-Pass after each optimum | yes / agent-optimum + Human at comparison |
| D8 | Pass R atom gen budget | |

## Autonomy

- Orchestrator: route + board only by default when resuming as OR  
- Pass workers: full craft loop until gate  
- Serial passes: T → C → V → R → (D?) → comparison → S  

## First route after freeze

1. Freeze `pins.md`  
2. Copy from `_templates/`: medium-rules for T/C/V/R/**S**, HAND-OFF, **comparison-matrix.md** → `comparison/matrix.md` (fill later)  
3. Confirm workers load SoT: `domains/medical/skill/medical-graphics/references/prompt-and-semantic-read.md` (R **and** V glyphs; S omit-is-win)  
4. **New session:** Pass T Worker  
