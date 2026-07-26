# Playbook 09 — Form recipes (skeletons)

Pick a recipe from Form Spec hypothesis; adapt pins — do not invent claims.

## `branching-emergency`

| | |
|---|---|
| **When** | Dual path under vital decision (e.g. BLS 4a/4b) |
| **Must-see** | Branch honesty; loop stays on monitor path; escalate edge |
| **Default realize** | hybrid or code |
| **Gold** | III-2 Primär-Algorithmus |
| **Anti** | Extra exits; 5/6 before CPR path |

## `leitsymptom-vertical-flow`

| | |
|---|---|
| **When** | First-Look → RF → R/I/S → C |
| **Must-see** | Order 1–4; danger 1–2; R/I/S trio; Default-to-Danger |
| **Default realize** | code recreate |
| **Gold** | IV-2, IV-4 |
| **Anti** | Mixed 112/ED; invented vitals |

## `hard-stop-protocol`

| | |
|---|---|
| **When** | On-site stop sequence (CES Sofortmaßnahmen) |
| **Must-see** | Solid stop first; Verbote; short escape |
| **Default realize** | code |
| **Gold** | III-5 S4 |
| **Anti** | English stage titles; BLS as main trunk |

## `framework-os-sequence`

| | |
|---|---|
| **When** | R+I+S→C method OS (not emergency card) |
| **Must-see** | Binary “kein C ohne R+I+S”; R-first; asymmetry; **teal not all-red** |
| **Default realize** | code; optional `layout: "landscape"` dashboard |
| **Gold** | II-1 S8 |
| **Anti** | Solid red emergency wall |

## Pattern transfer

Copy skeleton + swap claim pins (IV-2 → IV-4). Re-audit free labels always.

---

## Krankheitslehre (Illness Script) recipes

**Library table:** [`../references/kl-form-library.md`](../references/kl-form-library.md)  
**Ontology:** `media-brief/references/kl-illness-script-ontology.md`  
**Rule:** no form-meta inside figures; German pins only.

### `kl-urgency-scope-stack`

| | |
|---|---|
| **When** | §5 TIME tiers + orthogonal SCOPE |
| **Must-see** | T1≠T2; ACTION inside tier; multi-trigger inside T1; SCOPE separate geometry; no Treat-ohne-Netz |
| **Default realize** | code |
| **Gold** | `us-a-erysipel()` · form-spec `kl-u-urgency-scope` |
| **Anti** | Scope as grey ladder step; EN Action/Trigger chrome |

### `kl-urgency-nested-t1`

| | |
|---|---|
| **When** | Many 112 rows (ACS, sepsis flags) |
| **Must-see** | One T1 card + trigger list inside; not N ladder rungs |
| **Default realize** | code |
| **Gold** | `us-b-acs()` |
| **Anti** | F2-C false ladder |

### `kl-urgency-exception-t1`

| | |
|---|---|
| **When** | Content de-emphasizes 112 (e.g. Melanom screening); vital exception only |
| **Must-see** | Compact T1 exception strip — not loud empty 112 wall; T2/T3 weighted; SCOPE orthogonal |
| **Default realize** | code |
| **Gold** | `us-melanom()` · form-spec `kl-melanom-urgency` |
| **Anti** | ACS-style solid T1 dominating a non-112 pathway |

### `kl-abcde-look` (Melanom)

| | |
|---|---|
| **When** | Structured skin look: ABCDE + Ugly Duckling |
| **Must-see** | All five letters with DE criteria from C; D typisch > 5 mm; Ugly Duckling; no destructive measures cue |
| **Default realize** | **free vision required** → claim audit → accept-asset if PASS; code cascade = pin-safe fallback |
| **Gold** | `assets/kl-melanom-abcde/vision-refined-02.png` · `abcde-melanom()` fallback · form-spec `kl-melanom-abcde` |
| **Anti** | Glossary table only; EN-only letters; inventing mm cut-offs; skipping free vision for this unit |

### `kl-fast-look` (Schlaganfall)

| | |
|---|---|
| **When** | FAST ≥1 with sudden onset → 112; TIA remittiert still emergency |
| **Must-see** | F/A/S DE criteria dense; **T = Time/Notruf 112** (not a body part); optional BE-FAST secondary; no HWS delay |
| **Default realize** | **code densified** (`fast-stroke-code`); free only if true image-gen **and** denser/clearer than code |
| **Gold** | `kl-wave5/lib/stroke.typ` → `fast-stroke-code()` · form-spec `kl-stroke-fast` · spike `ambition-v2.pdf` |
| **Anti** | Empty icon wells + tiny text; Typst-as-free after 429; T as tongue; ABCD² home algorithm |

### `kl-spatial-compartment`

| | |
|---|---|
| **When** | Acute compartment syndrome — hour-critical limb ischemia |
| **Must-see** | **Principle:** pressure in a closed loge; disproportional + stretch + board-hard; **pulses do not exclude**; not elevate above heart |
| **Default realize** | **Principle schematic** (`spatial-compartment-principle`) — coarse/abstract; **not** atlas anatomy free vision |
| **Gold** | `spatial-compartment-principle()` · `dist/…/compartment-principle.pdf` · form-spec `kl-compartment-spatial` |
| **Anti** | Fake-correct bone cuts; multi-vignette free posters; hexagon “anatomy”; invent 6P/mmHg; photoreal limb as unsupervised free gen |

### `kl-safety-chrome` (Suizidalität)

| | |
|---|---|
| **When** | Suicide risk / escalation in Direktzugang |
| **Must-see** | Nested T1 multi-trigger; T2 same-day–48h psych as **one** tier; SCOPE no PsychKG; calm teal |
| **Default realize** | **code only** — free vision skip (no method imagery) |
| **Gold** | `kl-wave5/lib/suicid.typ` · form-specs `kl-suicid-*` |
| **Anti** | Sensational free vision; nooses/weapons; Treat without net; invent T3 for 48h row |

### `kl-urgency-scope-dashboard`

| | |
|---|---|
| **When** | Scan dashboard TIME left + SCOPE right |
| **Must-see** | Same as stack; DE labels only |
| **Default realize** | code (`us-d-erysipel`); free vision optional then audit |
| **Gold** | `lib/us-d-dashboard.typ` |
| **Anti** | English stage meta |

### `kl-mimic-map` / `kl-mimic-peel`

| | |
|---|---|
| **When** | Trügerische Erklärungen (FRAME-ERROR) |
| **Must-see** | Frame → danger direction; content title only |
| **Default realize** | code map or peel; asset peel optional |
| **Gold** | `m-a-erysipel` / `m-b-erysipel` · asset `kl-m-b-mimic` |
| **Anti** | Wireframe Label/Darunter; reverse direction |

### `kl-discrimination`

| | |
|---|---|
| **When** | §4 Erhärtet / Passt nicht + Nicht übersehen |
| **Must-see** | Two poles then separate loud NM strip — not one 2×2 |
| **Default realize** | code |
| **Gold** | `discrimination.typ` |
| **Anti** | Equal cells with mimic |

### `kl-mechanism-chain`

| | |
|---|---|
| **When** | §2 Ursache→Folge |
| **Must-see** | Chain looks like chain; handlungsnah |
| **Default realize** | code CeTZ |
| **Gold** | `mechanism-erysipel()` |
| **Anti** | Decorative anatomy without labels |

### `kl-spatial-saddle` / `kl-spatial-mscc`

| | |
|---|---|
| **When** | CES saddle / MSCC spine localization |
| **Must-see** | Spatial + pinned German labels; no invented ml/thresholds |
| **Default realize** | free vision → audit → **asset** (hybrid if pins must edit) |
| **Gold** | `assets/kl-ces-saddle` · `assets/kl-mscc-spine` |
| **Anti** | Replacing III-5 hard-stop with Master spatial alone without urgency path |
