# Form Spec — Melanom ABCDE: U-urgency + U-scope

| Feld | Wert |
|------|------|
| **Unit** | U-urgency + U-scope (Handeln und Dringlichkeit) |
| **Source** | `chapter-v-10-melanom-abcde-hautscreening.md` §5 only |
| **brief_class** | exploration |
| **Audience** | Direktzugang Physiotherapie (Krankheitslehre / illness-script) |
| **Goal** | Learner can triage pigmented-lesion situations by **TIME** and **SCOPE** under scan stress — without diagnosing Melanom or treating the lesion |

---

## 1. Intent

Render the §5 action ladder as a single scannable unit that answers two orthogonal questions:

1. **TIME (Dringlichkeit):** How fast must medical care happen?
2. **SCOPE (Zuständigkeit):** What is / is not the PT’s job at that step?

These axes must remain visually and semantically **separate** (TIME ≠ SCOPE). Geometry and zone placement carry the distinction — **not** form-meta labels drawn inside the figure.

---

## 2. Information architecture / zones

| Zone ID | Role | Content (from §5) | Layout intent |
|---------|------|-------------------|---------------|
| **Z0** | Title strip | Unit title only: Handeln & Dringlichkeit — Melanom / ABCDE-Hautscreening | Thin header; no clinical claims |
| **Z1** | **TIME ladder** (vertical stack, top → bottom = faster → safer) | Urgency rungs with situation + action pins | Dominant left/center column; visual weight encodes urgency |
| **Z1-T1** | Exceptional T1 | **112** only for vital Bedrohungs-Begleitlage | Visually *de-emphasized* vs T2 (dashed/thin/“Ausnahme”-treatment) — not the primary path |
| **Z1-T2** | Primary acute medical | **Notaufnahme / gleichtags Arzt** | Strongest rung (filled/high-contrast) — default “stop & send today” |
| **Z1-T3** | Subacute medical | **Zeitnah Dermatologie** | Medium weight; still referral, not PT treat-lesion |
| **Z1-T4** | Continue care | **Behandeln mit Sicherheitsnetz** | Softest rung; MSK continues only *without* suspekte Kriterien |
| **Z2** | **SCOPE bar / rail** | **Grenze der eigenen Zuständigkeit** — always-on constraints | Separate band (right rail or bottom full-width) — never mixed into TIME cells as a “level” |
| **Z3** | Safety-net callout (optional micro-zone) | Rückkehrgründe / neu auffällige Läsion → stop + zuweisen | Attached to T4 or SCOPE, not a new TIME level |
| **Z4** | Legend / scan key (outside figure body if needed) | TIME vs SCOPE reading instruction for production only | **Not** part of learner-facing figure content |

### Zone rules

- **TIME rungs (Z1-\*)** hold only: Situation · Dringlichkeit · Handlung (copy-through pins).
- **SCOPE (Z2)** holds only: professional boundary claims (no diagnosis, no excision, no destructive acts; endgültige DDx is ärztlich).
- Do **not** invent intermediate rungs (e.g. “within 48 h”) not present in §5.
- Do **not** place SCOPE items as a TIME rung between T3 and T4.

---

## 3. Must-see elements

| # | Must-see | Why |
|---|----------|-----|
| M1 | **Exceptional T1 ≠ primary path** | §5: Im Melanom-Screening typischerweise **nicht** primär 112; Ausnahme nur bei vital bedrohlicher Begleitlage |
| M2 | **T2 as default acute action** | blutende/ulzerierte unklare Läsion; ABCDE-suspekt / rasch wachsend; B-Symptomatik + multiple Hautknoten → gleichtags–zeitnah Arzt |
| M3 | **T3 distinct from T2** | Hutchinson-Zeichen-Verdacht / Ugly Duckling ohne akute Blutung → **zeitnah** Dermatologie (not same visual weight as gleichtags) |
| M4 | **T4 = treat MSK only without suspekte Kriterien** + Sicherheitsnetz | Continue is conditional; neu auffällige Läsion → sofort stoppen und zuweisen |
| M5 | **SCOPE separated from TIME** | „Grenze der eigenen Zuständigkeit“ is always-on, not a clock level |
| M6 | **Explicit bans on figure** (SCOPE or T2 action cells) | **keine** destruktiven Maßnahmen; keine Melanom-Diagnose; keine Exzision |
| M7 | **Written handoff cue on T2/T3** | schriftlich „Melanom-DDx / ABCDE-suspekt?“ + Befundbeschreibung (T2); schriftliche Zuweisung (T3) |
| M8 | Geometry (not labels like “TIME axis”) carries **TIME≠SCOPE** | No form-meta chrome inside the figure |

---

## 4. Claim pins (German copy-through — §5 only)

Pins are **verbatim or near-verbatim** from the monograph table in §5. Production must not paraphrase clinical meaning away.

### P-T1 — 112 (exceptional)

| Pin ID | Claim text (DE) | Role |
|--------|-----------------|------|
| P-T1-sit | Im Melanom-Screening typischerweise **nicht** primär 112; Ausnahme nur bei vital bedrohlicher Begleitlage (z. B. akute schwere Blutung, Schock) | Situation |
| P-T1-time | (nur bei vitaler Ausnahme) Notruf | Dringlichkeit |
| P-T1-act | Dann Notruf und Standard-Notfallmanagement; Melanom selbst ist primär onkologisch-dermatologisch zeitkritisch, nicht reanimationspflichtig | Handlung |

### P-T2 — Notaufnahme / gleichtags Arzt

| Pin ID | Claim text (DE) | Role |
|--------|-----------------|------|
| P-T2-sit | blutende oder ulzerierte unklare Hautläsion; **ABCDE-suspekte** oder rasch wachsende pigmentierte Läsion; B-Symptomatik plus multiple Hautknoten | Situation |
| P-T2-time | gleichtags bis zeitnah (bei Blutung/Ulzeration und systemischen Zeichen eher gleichtags) | Dringlichkeit |
| P-T2-act-stop | Therapie an der Läsion stoppen; **keine** destruktiven Maßnahmen | Handlung |
| P-T2-act-ref | gleichtags Hausarzt/Dermatologie bzw. onkologisch-dermatologische Abklärung | Handlung |
| P-T2-act-doc | schriftlich „Melanom-DDx / ABCDE-suspekt?“ und Befundbeschreibung mitgeben | Handlung |

### P-T3 — Zeitnah Dermatologie

| Pin ID | Claim text (DE) | Role |
|--------|-----------------|------|
| P-T3-sit | neu aufgetretene subunguale Pigmentierung kombiniert mit Nagelwall-Pigmentierung (Verdacht auf **Hutchinson-Zeichen**); **Ugly Duckling** ohne akute Blutung | Situation |
| P-T3-time | zeitnah | Dringlichkeit |
| P-T3-act | Schriftliche Zuweisung Dermatologie/Hausarzt zur Exzisionsabklärung; Patient über Dringlichkeit und Rückkehrgründe informieren | Handlung |

### P-T4 — Behandeln mit Sicherheitsnetz

| Pin ID | Claim text (DE) | Role |
|--------|-----------------|------|
| P-T4-sit | ohne suspekte Kriterien | Situation |
| P-T4-act | MSK-Therapie fortsetzen; bei neu auffälliger Läsion im Verlauf sofort stoppen und zuweisen | Handlung |
| P-T4-screen | auf gesetzliches Hautkrebs-Screening (in DE ab 35 Jahren alle 2 Jahre) hinweisen, ohne Screening zu ersetzen | Handlung / Hinweis |

### P-SCOPE — Grenze der eigenen Zuständigkeit

| Pin ID | Claim text (DE) | Role |
|--------|-----------------|------|
| P-SC-when | immer bei Verdacht | Trigger |
| P-SC-ban | Keine Melanom-Diagnose, keine Exzision, **keine** destruktiven Maßnahmen an suspekten Läsionen | Verbot |
| P-SC-ddx | endgültige DDx (seborrhoische Keratose vs. Melanom) ist ärztlich | Zuständigkeitsgrenze |

**Out of scope for this unit:** ABCDE teaching detail, mechanism, DDx table rows, Fall zur Selbstprüfung (§6) — those belong to other KL units; may be cross-referenced in brief notes only, not as figure pins.

---

## 5. TIME model (exceptional T1)

```
T1  112                    [EXCEPTIONAL — de-emphasized]
    └─ only vital Bedrohungs-Begleitlage (schwere Blutung, Schock)
    └─ Melanom itself is NOT the 112 indication

T2  Notaufnahme / gleichtags Arzt   [PRIMARY ACUTE]
    └─ Blutung/Ulzeration · ABCDE-suspekt/rasch wachsend · B-Symptome + multiple Hautknoten

T3  Zeitnah Dermatologie   [SUBACUTE REFERRAL]
    └─ Hutchinson-Zeichen-Verdacht · Ugly Duckling ohne akute Blutung

T4  Behandeln + Sicherheitsnetz
    └─ only ohne suspekte Kriterien
```

**Design implication:** Do not draw a full-width red emergency banner for 112. Prefer a narrow “Ausnahme”-chip above or beside T2 so scan path lands on **gleichtags Arzt**, not EMS.

---

## 6. SCOPE model (orthogonal to TIME)

SCOPE is a **constant constraint rail**, not a fifth clock speed:

- Always: no Melanom diagnosis, no excision, no destructive measures on suspekte Läsionen.
- Always: final DDx is medical.
- Couples to every TIME rung: even at T4, new suspekte Läsion → leave treat mode → assign (TIME jumps up; SCOPE still holds).

**Geometry must carry TIME vs SCOPE** (e.g. vertical urgency stack vs. horizontal/side ban-rail).  
**Forbidden in figure body:** form-meta captions such as “U-urgency”, “TIME axis”, “SCOPE facet”, “illness-script unit”, zone IDs, or pin IDs.

---

## 7. Recommended form family (exploration)

| Preference | Form | Rationale |
|------------|------|-----------|
| **Primary** | Urgency ladder + scope rail (stacked decision strip) | Matches §5 table: Situation × Dringlichkeit × Handlung + separate Zuständigkeitsgrenze |
| **Alt** | Two-panel: left TIME cards, right SCOPE “never/always” panel | Maximizes TIME≠SCOPE separation under tight page width |
| **Avoid** | Single traffic-light with 112 as top default | Mis-teaches Melanom screening as EMS-primary |
| **Avoid** | Algorithm flowchart with free-text boxes | Encourages paraphrasing pins; weak scan hierarchy |

Exploration brief: prefer **Primary**; spike may test Alt if ladder overcrowds at book column width.

---

## 8. Anti-patterns

1. Making **112** the visually dominant top rung without “Ausnahme / nicht primär”.
2. Merging T2 and T3 into one “zum Arzt” blob (loses gleichtags vs zeitnah).
3. Putting SCOPE bans only as fine print under T4 (implies they apply only when treating).
4. Form-meta or ontology labels inside the graphic.
5. Inventing pins from §§1–4 or §6 (e.g. full ABCDE mnemonic as urgency content).
6. Suggesting PT lesion treatment, monitoring-as-diagnosis, or “Abwarten und Beobachten” for ABCDE-suspekt (contradicts §5 T2).
7. Production `.typ` compose in this deliverable (Form Spec only).

---

## 9. Production constraints (for later compose — not this deliverable)

- Claim pins: German copy-through; keep **keine destruktiven Maßnahmen**, **ABCDE-suspekt**, **Hutchinson-Zeichen**, **Ugly Duckling**.
- No production Typst in this exploration package.
- Accessibility: contrast for T2 vs T3; do not rely on color alone for exceptional T1.
- Page role: decision aid near §5 / Handeln; not cover art.

---

## 10. Learner success criterion

**Under scan stress (≤ 10 s on the unit), the learner can:**

1. **Recognize** that Melanom/ABCDE-Screening is **not** primarily a **112** pathway — 112 only for vital Begleitlage (schwere Blutung, Schock).  
2. **Do** the default acute move: for blutende/ulzerierte unklare Läsion or **ABCDE-suspekt**/rasch wachsend (or B-Symptome + multiple Hautknoten) → **Therapie an der Läsion stoppen**, **keine destruktiven Maßnahmen**, **gleichtags** Hausarzt/Dermatologie, schriftlich „Melanom-DDx / ABCDE-suspekt?“.  
3. **Separate** subacute path: **Hutchinson-Zeichen**-Verdacht or **Ugly Duckling** without acute bleeding → **zeitnah** Dermatologie with written Zuweisung — not “treat and wait”.  
4. **Hold SCOPE:** never Melanom-Diagnose / Exzision / destruktive Maßnahmen; endgültige DDx is ärztlich — while MSK-Therapie only continues **ohne suspekte Kriterien**, with Sicherheitsnetz on new lesions.

If any of (1)–(4) requires reading body prose outside the figure, the form has failed the exploration brief.
