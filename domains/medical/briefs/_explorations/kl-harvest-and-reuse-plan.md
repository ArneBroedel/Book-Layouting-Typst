# KL-Formensprache — Rekapitulation, Harvest-Plan, Weiterarbeit

**Datum:** 2026-07-26  
**Status:** H1+H2 **implemented** (2026-07-26); H4 Guides optional next  
**Scope:** Krankheitslehre (Teil V/VI) Formensprache + Ambition-Pipeline  
**Exploration-SoT (working memory):** `domains/medical/briefs/_explorations/` + `toolset/compose/spikes/graphics/kl-script-system/` + `domains/medical/assets/kl-*`

---

## 1. Rekapitulation: Was wir gelernt haben

### 1.1 Prozess (was funktioniert hat)

| Phase | Lerneffekt |
|-------|------------|
| Inhaltsanalyse 88 Monographien | KL ist **Script-System**, nicht 88 Unikate |
| Phase-1 Spike (zu schnell) | Dekoration ohne Relation → Ablehnung; Skills formal da, didaktisch flach |
| Kritik TIME/SCOPE, 2×2, Meta-UI | Dimensionskollaps und Form-Meta in der Grafik sind **harte Anti-Patterns** |
| Wave R Ontologie | Relation + Job **vor** Form |
| Gemini-Dialektik | Ontologie schärfen (T1≠T2, ACTION=Payload, T3 optional) |
| Wave C Form-Space | Viele Pfade + explizit verworfene |
| Wave M Form Specs | Gold-Dichte (Must-see, pins, genre) |
| Wave G code-first | Sauber, claim-fest, **oft uninspiriert** |
| Ambition free vision | Kreativsprung; **claim audit** zwingend; EN-Meta/DRIFT möglich |
| Refine + Typst-Recreate | Free Vision = Idee; **Code/DE** oft Accept-Winner für Band-Grammar |
| Spatial (CES, MSCC) | Asset oft besser; H-Gfx bei Production |

### 1.2 Ontologie v1.1 (Kern, unverhandelbar)

1. **TIME ≠ SCOPE** — SCOPE nie als Ampel-Sprosse  
2. **T1 ≠ T2** — 112 vs. Notaufnahme/gleichtags  
3. **ACTION = Payload** in TIME-Stufe, keine 3. Achse  
4. **Multi-Trigger ⊂ eine Stufe**  
5. **§4 = drei Relationen** (For/Against · Must-not-miss · Mimic), kein 2×2  
6. **§3 = vier Kanäle**, keine Fake-Matrix  
7. **Keine Form-Meta in der Figur** (kein „keine Dringlichkeitsstufe“, kein EN „Action/Trigger cluster“)  
8. **Master ≠ Slave** — KL teal/script; Notfallkarte III/IV  
9. **Claims copy-through** — keine Content-Arbeit im Layout-Workspace  
10. **Code-first für Band-Grammar; Free Vision für ambitionierte Spatial/Chrome**

### 1.3 Unit → bewährte Formen (Bibliothek-Samen)

| Unit | Bewährte Form | Carrier-Tendenz | Gold-Pfad |
|------|---------------|-----------------|-----------|
| U-urgency + U-scope | US-A stack / US-D dashboard | **code** | `lib/us-time-scope.typ`, `lib/us-d-dashboard.typ` |
| Multi-T1 | US-B nested | **code** | `us-b-acs()` |
| U-mimic | M-A rows / M-B peel | code (peel) / asset optional | `m-a-mimic.typ`, `m-b-peel.typ`, asset M-B |
| U-for-against + NM | FA-A + NM strip | **code** | `discrimination.typ` |
| U-mechanism | CeTZ chain | **code** | `script-core.typ` mechanism |
| U-enabling / BP / cues / transfer | triptych, 3-beat, table, case | **code** | `script-core.typ` |
| CES saddle | spatial map | **asset** (+ hybrid later) | `assets/kl-ces-saddle/` |
| MSCC spine | spatial map | **asset** | `assets/kl-mscc-spine/` |

### 1.4 Anti-Patterns (dauerhaft)

| Anti-Pattern | Stattdessen |
|--------------|-------------|
| Scope in TIME-Leiter | Orthogonal frame / side card, optisch getrennt |
| Multi-112 als Sprossen | Eine T1-Karte + Trigger innen |
| 2×2 für §4 | Drei Zonen sequentiell |
| 2×2 Farbe für §3 | Domänentabelle |
| Form erklären in der Grafik | Geometrie + Content-Titel |
| Solid-red Master-Kapitel | Teal framework, Rot nur T1 |
| Free Vision ohne Audit | G2 claim audit immer |
| EN Stage Chrome | DE only; recreate if drift |
| Content-Template hier umschreiben | Content-Workspace (C) |

### 1.5 Agent-/Rollen-Lektionen

| Rolle | Pflicht |
|-------|---------|
| Media | Ontology/Form-Space/Form Spec/Accept; **kein** production Typst als Idealersatz |
| Graphics | Free vision → audit → recreate/hybrid/refine; Decision Note |
| Tech | Embed nach Accept; creative-first |
| Content | Claims/Tiers im anderen Workspace — hier nur read-only Pins |

**Qualitätsspanne:** „sauber/unkreativ“ (code-first Grammar) vs. „wow“ (free vision + spatial) sind **beide** nötig; Reihenfolge: Grammar-Invarianten → dann Ambition, nicht umgekehrt.

---

## 2. Ziel der Verankerung

```text
Zukünftiger Agent / Mensch:
  „Neues KL-Kapitel / neues Spatial / neue Mimic-Form“
       │
       ▼
  findet in ≤2 Hops:
    · Ontologie-Regeln (was nie kollabieren darf)
    · Form-Bibliothek (Unit → Hypothese → Modul/Asset)
    · Pipeline-Schritte (R → C → M → G → Accept)
    · Compile-Befehle / Spike-Layout
    · Gold-Beispiele mit Pins-Transfer-Anleitung
```

Kein Durchwühlen von 20 Exploration-Dateien als Normalfall.

---

## 3. Wissens-Routing (Knowledge Map)

| Lerninhalt | Typ | Zielort |
|------------|-----|---------|
| ALWAYS/NEVER, Pipeline, Trigger wann KL-Formen | **Skill** | `media-brief` + `medical-graphics` (SoT `domains/medical/skill/…`) |
| Why: Dimensionen, Genre Master/Slave, Phase-1-Fails | **Guide** | `Guides/Medical-Presentation-Forms.md` + ggf. neuer Abschnitt KL |
| Why: free-first, audit, EN-drift, asset vs code | **Guide** | `Guides/Medical-Graphics-Playbook.md` |
| Ontologie v1.1 (kompakt, agent-loadable) | **Skill reference** | `media-brief/references/kl-illness-script-ontology.md` |
| Form recipes US-A/B/D, M-A/B, discrimination, spatial | **Skill reference / playbook** | `medical-graphics/playbook/09-form-recipes.md` + `references/kl-form-library.md` |
| Spike-Layout, compile, asset paths | **Skill reference / scripts** | short in medical-graphics SKILL + optional `scripts/` wrapper |
| Exploration provenance (88 analysis, gemini rounds) | **Exploration index** (dauerhaft, nicht Devtrack-Pflicht) | `briefs/_explorations/README.md` + bestehende Dateien |
| Aktive Weiterarbeit (Kapitel-Queue, neue Formen) | **Devtrack** | `devtracks/kl-form-language/` (spec+plan) |
| Governance one-liner | **AGENTS/CLAUDE skill gate** | eine Zeile: KL-Formen → media-brief ontology ref + medical-graphics library |

**Nicht** in bookkit foundation: medizinische Genre-Logik bleibt Domain B.

---

## 4. Geplante Dateistruktur (nach Harvest)

```text
domains/medical/
  skill/
    media-brief/
      SKILL.md                          # + trigger: KL Monographie / Illness Script forms
      references/
        design-reasoning.md             # + link KL ontology
        kl-illness-script-ontology.md   # NEW — v1.1 compact
        kl-form-space-process.md        # NEW — Wave R→C→M process for KL
    medical-graphics/
      SKILL.md                          # + KL library pointer, form-meta NEVER
      playbook/
        09-form-recipes.md              # + US-A/B/D, M-A/B, discrimination, saddle, mscc
        10-kl-chapter-pipeline.md       # NEW optional — end-to-end for one monograph
      references/
        kl-form-library.md              # NEW — unit→module→asset→gold path
        book-visual-standards.md        # + no form-meta in figure; DE only
  briefs/
    _explorations/
      README.md                         # NEW — index + „production knowledge is harvested“
      (bestehende Analyse/Freeze/Form-Space bleiben Provenance)
    kl-u-*.form-spec.md                 # keep as gold specs (or move to briefs/gold/)
  assets/
    kl-*/                               # keep with MANIFEST (library examples)

toolset/compose/spikes/graphics/kl-script-system/
  README.md                             # NEW — how to compile, lib inventory
  lib/*.typ                             # promote later to packages if stable

Guides/
  Medical-Presentation-Forms.md         # § KL Illness Script forms
  Medical-Graphics-Playbook.md          # § Ambition vs grammar; EN-drift lesson

devtracks/kl-form-language/
  spec.md                               # product goal: reusable KL form language
  plan.md                               # harvest phases + chapter expansion queue
```

Symlinks: SoT bleibt `domains/medical/skill/…`; `.github/skills` / `.grok/skills` wie bisher.

---

## 5. Harvest-Phasen (Ausführung)

### Phase H1 — Index & Devtrack (1 Session, low risk)

1. `briefs/_explorations/README.md` — Index aller Artefakte + Status  
2. `spikes/.../kl-script-system/README.md` — lib table + compile commands  
3. `devtracks/kl-form-language/{spec,plan}.md` — Weiterarbeit formalisieren  
4. Optional: `docs/KNOWLEDGE-MAP.md` eine Zeile Domain B KL forms  

### Phase H2 — Skill references (agent-critical)

1. **`kl-illness-script-ontology.md`** aus SYNTHESIS-v1.1 + Anti-Patterns (≤150 Zeilen)  
2. **`kl-form-library.md`** Unit → recipe name → lib function → asset → form-spec path  
3. **`kl-form-space-process.md`**: R Ontologie → C Form-Space (≥3+2 paths) → M Form Spec → G pipeline → Accept; **Grammar first, then ambition**  
4. Update `media-brief/SKILL.md` description + „When KL monograph“ → load ontology  
5. Update `medical-graphics/SKILL.md`: form-meta NEVER; link library; KL recipes  

### Phase H3 — Playbook recipes

Extend `09-form-recipes.md` (or split `09b-kl-recipes.md`):

| recipe id | when | default realize | gold |
|-----------|------|-----------------|------|
| `kl-urgency-scope-stack` | §5 TIME+SCOPE | code | US-A/US-D |
| `kl-urgency-nested-t1` | multi-112 | code | US-B ACS |
| `kl-mimic-map` | trügerisch | code | M-A |
| `kl-mimic-peel` | trügerisch high chrome | code or asset | M-B |
| `kl-discrimination` | §4 FA+NM | code | discrimination.typ |
| `kl-mechanism-chain` | §2 | code CeTZ | script-core |
| `kl-spatial-saddle` | CES | asset/hybrid | ces-saddle |
| `kl-spatial-mscc` | MSCC | asset/hybrid | mscc-spine |

### Phase H4 — Guides (why)

1. **Medical-Presentation-Forms.md**  
   - § Illness Script Master (genre chrome)  
   - § Dimension rules TIME/SCOPE/ACTION  
   - § No form-meta in figures  
   - Link ontology + library  

2. **Medical-Graphics-Playbook.md**  
   - § Grammar vs Ambition loop  
   - § Free vision EN-drift lesson (US-D)  
   - § Spatial accept-asset + H-Gfx  

### Phase H5 — Scripts (optional, high leverage)

| Script | Zweck |
|--------|--------|
| `scripts/kl-form-spike-init.sh <slug>` | Spike dir + lib stub from recipe id |
| Extend `graphics-spike-init.sh` | recipe ids for KL |
| Optional: pin-extract helper | read §5 from monograph path → stub pins table (no claim rewrite) |

### Phase H6 — Quality gate

- `quick_validate.py` on media-brief + medical-graphics  
- skill-creator light eval prompts:  
  - „Gestalte §5 für Erysipel-ähnliches KL-kurz“  
  - „Mimic map ohne Form-Meta“  
  - „CES spatial free vision then audit“  

### Phase H7 — Freeze exploration

- Exploration files stay as provenance  
- README states: **normative knowledge = harvested skills/guides**  
- Devtrack plan footer „Harvested into“ when H2–H4 done  
- Do **not** delete exploration  

---

## 6. Betriebsmodell für „weitere Kapitel“

```text
Für jedes neue Thema / Kapitel:

1. Content path (C, read-only) — freeze optional for exploration
2. Load: kl-illness-script-ontology + kl-form-library
3. Map content units → existing recipes (transfer pins)
4. If gap: mini Form-Space (only new units) — ≥3 paths + rejects
5. Form Spec (if ambitious or new recipe)
6. Realize:
     - Band grammar units → code from lib (pattern transfer)
     - Spatial / high chrome → free vision → audit → asset|recreate|hybrid
7. Spike PDF (chapter or unit)
8. Media Accept exploration
9. If new durable pattern → append kl-form-library + recipe (small harvest)
```

**Kreativitäts-Slot (explizit):**  
Pro Kapitel mindestens **eine** ambitionierte Unit (Spatial, Peel, Dashboard, Free Vision) — nicht nur Box-Stack.  
Pro Welle: Grammar-Stabilität nicht opfern.

**Anti-Scope:** Keine Content-Autorenschaft / Template-„Zeitnah“-Debatten im Layout-Workspace.

---

## 7. Kapitel-Queue-Vorschlag (nach Harvest)

| Priorität | Thema | Warum |
|-----------|--------|--------|
| 1 | Harvest H1–H4 | Wissen greifbar |
| 2 | ACS full stack (US-B + mechanism organ ambition) | High-stakes multi-T1 |
| 3 | Melanom (T3 + ABCDE gestalt) | T3 + Gestalt |
| 4 | Suizidalität (non-anatomic chrome) | Genre stress test |
| 5 | Anaphylaxie hard-stop | procedure recipe bridge III |
| 6 | Weitere Spatial (Dermatom Zoster, Abdomen) | library growth |

---

## 8. Erfolgsmaß Harvest

| Maß | |
|-----|--|
| Agent findet Ontologie + Library ohne Exploration-Archäologie | ≤2 Datei-Hops from skill |
| Neues kl-kurz: §5+§4+Mimic in <1 Session mit Pin-Transfer | pattern transfer works |
| Form-Meta erscheint nicht in neuen Spikes | invariant encoded |
| Free Vision immer mit Audit-Artifact | process encoded |
| Exploration bleibt nachvollziehbar | README index |

---

## 9. Empfohlene nächste Aktion

**Sofort nach Freigabe dieses Plans:** Phase **H1 + H2** (Index, Devtrack, ontology + form-library skill refs, skill SKILL.md pointers).  

**Nicht** parallel 5 neue Kapitel vor Harvest — sonst verliert man die Learnings wieder in Exploration-Haufen.

---

## 10. Mapping: vorhandene Artefakte → Harvest-Ziel

| Vorhanden | Wird zu |
|-----------|---------|
| `gemini-ontology-eval/SYNTHESIS-v1.1-frozen.md` | `media-brief/references/kl-illness-script-ontology.md` |
| `kl-form-space.md` | process ref + library seeds |
| `kl-u-*.form-spec.md` | gold form specs (stay or `briefs/gold/kl/`) |
| `lib/*.typ` | `kl-form-library.md` + later optional bookkit-didactics or compose lib |
| `assets/kl-*` | library examples + MANIFEST |
| `kl-ambition.accept.md` / claim audits | lessons in Graphics Playbook |
| `welle-06-kl-content-forms-analysis.md` | stay exploration; summary table → library |
| Phase-1 anti-patterns | ontology + Presentation-Forms anti-section |

---

*Ende Plan. Ausführung = separates „Harvest ausführen“ Commit/PR.*
