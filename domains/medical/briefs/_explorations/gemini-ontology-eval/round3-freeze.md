# Gemini Ontology Eval — round3-freeze.md

- **model:** pro
- **permalink:** https://gemini.google.com/app/29e5169203d307b8
- **retrieved:** 2026-07-26T10:37:17.140357+00:00
- **content_hash:** 0ac6af2392b773ed

---

1. Urteil zu C1–C4C1 (TIME-Skala exakt): ACCEPT. Die harte Trennung zwischen Präklinik/Rettungsdienst (T1) und ärztlicher Notfallversorgung (T2) ist rettungskettenspezifisch zwingend und verhindert fatale Fehlleitungen.C2 (Dimension ACTION – Zurückweisung): ACCEPT REJECT. Das Argument ist logisch unangreifbar; ACTION als eigene Achse führt zu multidimensionalem Rauschen, während es in Wahrheit der exekutive Payload der jeweiligen TIME-Stufe ist.C3 (Epistemische Dimensionen bleiben): ACCEPT. Sie definieren das klinische Reasoning und die didaktische Tiefe, bleiben aber strukturell den primären Achsen untergeordnet, um das visuelle System nicht zu brechen.C4 (Primary jobs final): ACCEPT. Die Zuweisung der Jobs zu den Einheiten ist überschneidungsfrei, präzise und direkt auf die Entscheidungsarchitektur des Kursbuch 5.0 abgestimmt.2. FINAL Dimensionsmodell

Dimension

Art

Was sie steuert

Was verboten ist

TIMEAxis (primär)Dringlichkeit, Container für ACTION-Payload

Kollaps von T1 und T2; Nutzung für nicht-zeitliche Kategorien

SCOPEAxis (primär)Befugnisgrenzen (PT vs. Arzt), Stop-Awareness

Gleichsetzung mit Urgency/TIMEHYP / FRAME / CHANNEL / CAUSAL / PROFILE / TRANSFEREpistemic

Klinisches Reasoning, didaktisches Modell, Must-not-miss-Logik

Nutzung als ordnende Strukturachse für das Gesamt-Layout

ACTIONPayload

Die konkrete Handlungsanweisung innerhalb einer TIME-Stufe

Auslagerung als dritte Dimension oder Z-Achse

COMMUNICATION / CERTAINTYModifier / Property

Nachdruck von Qualifiern, Scope-Scores (sensibilisiert vs. ausschließen)Eigenständige Achsen oder Stufen

3. FINAL TIME-Skala T1–T4Die TIME-Achse ist strikt ordinal und in vier Stufen unterteilt.T1 | 112 / Sofort: Aktivierung der Rettungskette jetzt. (Immer vorhanden, wenn zutreffend).T2 | Notaufnahme / gleichtags / noch heute: Unverzügliche ärztliche Vorstellung, oft ohne Notruf, aber akut. (Immer vorhanden, wenn zutreffend).T3 | Zeitnah Arzt: Binnen Tagen / priorisierte Abklärung. Regel: Optional. Wird nur gerendert, wenn der Content diese spezifische Stufe füllt.T4 | Behandeln + Sicherheitsnetz: Physiotherapeutische Behandlung möglich + Definition der Rückkehrgründe (Worsening Care Advice). (Immer vorhanden, Basis-Stufe).4. FINAL Unit Track A Kern

Unit

Status

One-Line Meaning

U-urgency

Behalten

Choose + stop (Bestimmung von T1/T2)U-scope

Behalten

Constrain / stop-awareness (primary), look-up secondary

U-mimic

Behalten

Distinguish (error mode)U-cues

Behalten

Recognize (Symptom/Zeichen-Erkennung)U-mechanism

Behalten

Understand (Pathophysiologisches Verständnis)U-for-against

Behalten

Distinguish (Weight H)U-must-not-miss

Behalten

Stop-awareness + distinguish

U-transfer

Behalten

Apply (Wissenstransfer auf den Case)U-ddx

Delta-only / Omit

Distinguish (post-action; nur Differenzen rendern, sonst weglassen)5. FINAL 7 harte Invarianten

Strikte T1/T2-Trennung: T1 (112) und T2 (Notaufnahme) dürfen niemals kollabieren oder semantisch vermischt werden.ACTION ist Payload: Handlung ist ausschließlich der inhaltliche Kern (Payload) einer TIME-Stufe, niemals eine Layout-Achse.Intra-Stufen-Trigger: Multi-Trigger (z.B. mehrere Red Flags) agieren und aggregieren immer nur innerhalb derselben TIME-Stufe.SCOPE trennt strikt: SCOPE definiert hart die Grenze zwischen therapeutischer Awareness (Screening) und ärztlicher Diagnostik.Modifier-Limitierung: COMMUNICATION und CERTAINTY sind ausschließlich Properties (Modifier) von bestehenden Einheiten (SCOPE/TIME) und erzeugen keine eigenen Entitäten oder Stufen.Epistemische Unterordnung: Epistemische Einheiten (HYP, FRAME, CAUSAL etc.) ordnen sich den primären Achsen (TIME/SCOPE) unter und brechen niemals deren Layout-Struktur.Delta-Regel für DDx: U-ddx wird zwingend als Delta (Unterschiede) gerendert; vollständige, redundante Symptomlisten sind verboten.6. Relationsgraph (textuell, final)
```code-snippet
graph TD
    subgraph Primary_Axes [Primäre Layout-Achsen]
        T[TIME: T1 - T4]
        S[SCOPE: PT vs Med]
    end

    subgraph Payloads_Modifiers [Payloads & Modifier]
        A[ACTION]
        C[CERTAINTY / COMMUNICATION]
    end

    subgraph Epistemic_Units [Epistemische Einheiten]
        E[HYP, FRAME, CUES, CAUSAL, etc.]
    end

    T -->|enthält zwingend| A
    S -->|limitiert| A
    S -->|wird qualifiziert durch| C
    A -->|wird moduliert durch| C
    E -.->|informiert / triggert| T
    E -.->|definiert Grenzen für| S

```
7. Was NICHT in die Ontologie gehört

Typst-Mapping & Rendering-Syntax: Wie eine U-urgency in Typst oder CSS gesetzt wird (Farben, Abstände, Macros), gehört in Implementation Wave C/G.Parser-Logik & Regex: Wie der Markdown-Illness-Script-Text maschinell in den AST überführt wird.Konkrete klinische Inhalte: Spezifische Red Flags (z.B. Cauda-Equina-Symptomatik) oder Pathologien. Die Ontologie definiert nur die Struktur, nicht die Medizin.Typografie & Ikonografie: Die Wahl von Warn-Icons oder Schriftstärken ist reines Design-System-Territorium.8. Freeze-Empfehlung

Ontology v

1.1 frozen for Wave C. Die logische Architektur für das Kursbuch 5.0 Visual-System ist hiermit vollständig, überschneidungsfrei und robust. Es gibt keine offenen konzeptionellen Blocker mehr bezüglich der Achsen, Einheiten oder deren Relationen. Die Parameter für die Designer und Entwickler (Wave C) sind als harte Invarianten gesichert, die Implementierung (Parser, Typst-Mapping) kann auf dieser Basis sofort und ohne Rückwärtskompatibilitätsprobleme beginnen.
