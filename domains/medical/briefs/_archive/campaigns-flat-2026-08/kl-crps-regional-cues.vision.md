# Graphic Vision Brief (Phase A — free)

- **chapter_id / slug:** V-3-crps-sudeck / `kl-crps-regional-cues`
- **unit_id:** U-cues
- **brief_path:** `domains/medical/briefs/kl-crps.brief.md`
- **form_spec_path:** `domains/medical/briefs/kl-crps-regional-cues.form-spec.md`
- **content_source:** Kursbuch5 `chapter-v-3-crps-sudeck.md` §3
- **genre:** illness-script (kl-kurz)
- **recipe_id:** cue-matrix / regional gestalt board
- **author_role:** graphics
- **date:** 2026-07-30
- **generator:** nanobanana-free (agy) | gemini fallback
- **structure_reference:** **none**

## Learner / didactic intent (from Form Spec — short)

- **unit type:** recognition
- **learner job:** recognize regional distal disproportionate pain + multi-domain cues
- **load risk:** table dump; missing gestalt; looks like Budapest HP checklist; deep anatomy
- **presentation hypothesis / recipe:** four-tile cue matrix + distal-regional gestalt header + emergency re-triage escape rail
- **success criterion:** can list disproportional pain + Seitenvergleich vegetative/trophic cues + distal/regional; Fieber/Spannung/Pulslosigkeit → sofortige Notfall-Re-Triage
- **why this must look like a graphic:** recognition engine of the chapter; table alone fails scan

## Must-see (from Form Spec)

1. Four domain tiles: Anamnese / Beobachtung / Untersuchung / Verlauf
2. Gestalt: disproportional + regional distal after trauma/OP
3. Escape rail: Fieber, eitrige Wunde, rasche Spannungszunahme, Pulslosigkeit → sofortige Notfall-Re-Triage
4. German pins only; not solid emergency wall for whole board

## Content to show (claim-safe labels only)

| step / zone | allowed text (German) |
|---|---|
| Anamnese | Trauma/OP der Extremität; brennender, stechender oder dumpfer Schmerz **deutlich stärker als zur Verletzung passend**; Berührungsempfindlichkeit; Schwellung; Farb- oder Temperaturdifferenz; vermehrtes Schwitzen; motorische Unsicherheit |
| Beobachtung | Asymmetrische Schwellung; Hautfarbe blass, rötlich oder livide; sichtbare trophische Veränderungen (Haut, Nägel, Behaarung); Schonhaltung |
| Untersuchung | Seitenvergleich (Temperatur, Farbe, Schwitzen); Allodynie bei leichter Berührung; Hyperalgesie; Kraft und Sensibilität; periphere Pulse; Wundstatus und systemische Infektzeichen |
| Verlauf | Tage bis Wochen post Trauma; Persistenz oder Zunahme statt erwarteter Heilung; bei Fieber, eitriger Wunde, rascher Spannungszunahme oder Pulslosigkeit **sofortige** Notfall-Re-Triage veranlassen |
| Gestalt | regional; typischerweise distal der Läsion |

## Invariants / genre chrome

- Branching / loop rules: escape rail louder than decorative chrome
- Must look like: clinical cue dashboard / matrix with gestalt
- Must not look like: Budapest diagnostic scorecard; anatomy atlas / bone cross-section

## Explicit non-goals

- No clinical invention
- No English decorative titles
- No deep anatomy free vision (H-Gfx pause) — abstract region marker OK, not organ teaching plate
- No form-meta inside figure

## Creative freedom note

Composition open. Optional abstract distal-field silhouette only as region marker. Labels pinned from C.

## Output paths (fill after generation)

| candidate | path | notes |
|---|---|---|
| vision-free-01 | `domains/medical/assets/kl-crps-regional-cues/vision-free-01.png` | |
| vision-free-02 | optional | |

## Self-check (after gen)

- [ ] No structure file was used as layout template
- [ ] Claim audit run (playbook 03) — PASS / DRIFT / FAIL: ____
- [ ] Ready for Phase B: `recreate` | `refine` | `accept-asset`
- [ ] No unsupervised anatomy deep dive
