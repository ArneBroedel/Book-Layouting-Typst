# Phase-1-Kritik → Inhaltsbeziehungen → Redesign

**Datum:** 2026-07-26  
**Anlass:** Human-Review der Spike-Varianten F2–F4  
**Haltung:** Die Kritik ist im Kern **richtig**. Phase 1 war zu schnell, zu dekorativ und hat Dimensionen vermischt. Das war **nicht** die Tiefe, die `media-brief` / `medical-graphics` fordern.

---

## 1. Was schief lief (ehrlich)

| Fehler | Was passiert ist | Skill-Soll |
|--------|------------------|------------|
| **Dekoration statt Beziehung** | 2×2-Gitter und Ampel-Spuren, weil „vier Dinge / drei Farben“ | Zuerst: *Welche Relation hat der Content?* Dann Form |
| **Dimensionen vermischt** | Zuständigkeit als unterste Sprosse der „Urgency Ladder“; in F2-C Trigger, Stopp-Satz, Scope und Treat als eine Leiter | Eine Zone = ein Learner-Job (`design-reasoning`) |
| **Meta-Chrome im Druck** | „Label“ / „Darunter“ als sichtbare Wörter | Dual coding: Labels *sind* der Inhalt, keine Wireframe-Legende |
| **Falsche Varianten als gleichwertig** | Tiles vs. Table ohne didaktischen Mehrwert der Tiles | Variante nur wenn sie *job* besser erfüllt |
| **Kein Free-Vision-Pfad** | Direkt Typst-Boxen „zusammengesteckt“ | Bei ambitioniertem Visual: Beziehung klären → Ideal → dann carrier |
| **Ampel-Ästhetik unreflektiert** | Rot/Gelb/Grün wirkt gut, beantwortet aber nicht, *wie viele* Urgency-Stufen der Content wirklich hat | Content-Inventur vor Farbe |

**Skills kamen formal vor** (Brief, Form Spec, unit types) — **inhaltlich-didaktisch zu flach.** Das ist der eigentliche Fail, nicht „zu wenig Dateien“.

---

## 2. Was §5 *inhaltlich* ist (Beziehungen)

### 2.1 Zwei getrennte Dimensionen (nicht eine Leiter)

```text
DIMENSION A — Dringlichkeit / Zeit bis Handeln     (decision: choose)
   „Wie schnell muss was passieren?“

DIMENSION B — Zuständigkeitsgrenze / Scope         (reference + danger support)
   „Was darf / kann ich hier gar nicht klären?“
   → gilt *quer* zu allen Dringlichkeitsstufen, ist KEINE Stufe darunter
```

**Zuständigkeit in die Urgency-Leiter zu legen war falsch.**  
Scope ist eher: *Randbedingung / Frame* (Banner, Fußleiste, seitliche Note) — immer sichtbar, aber **nicht** „Stufe 4 der Ampel“.

### 2.2 Dimension A — wie viele Stufen gibt der Content wirklich?

**Template-Soll** (`illness-script-block.md`) nennt nur:

1. 112  
2. Notaufnahme / gleichtags Arzt  
3. Behandeln mit Sicherheitsnetz  
4. *(plus)* Grenze der Zuständigkeit ← **nicht** Dringlichkeit

**Welle-06-Realität** (88 Monographien, Zeilen inventarisiert):

| Stufe (inhaltlich) | Vorkommen | Bedeutung |
|--------------------|-----------|-----------|
| **112 / Sofort** | sehr häufig, oft *mehrere Trigger-Zeilen* | Rettungskette jetzt |
| **Notaufnahme / gleichtags** | fast überall | noch heute / unverzüglich medizinisch |
| **Zeitnah Arzt** (Tage, nicht monatelang; Facharzt/HA) | **in vielen Kapiteln eigenständig** (Melanom, Zoster, CRPS, MS, Borreliose, Psych, …) | bald ärztlich, *nicht* gleichtags-Notfall |
| **Behandeln + Sicherheitsnetz** | Standard-Unterkante der Handlung | PT möglich, mit Rückkehrgründen |
| **Behandeln ohne Netz / „unkritisch weiter“** | **praktisch nicht** als eigene Zeile | DA-Doctrine: nach Screening immer Netz-Idee — *kein* fehlendes Layout-Tier, sondern Content-Entscheidung |

**Erysipel-Demo** hatte **kein** separates „Zeitnah“ — nur 112 / gleichtags / Treat+Netz / Scope.  
Deshalb wirkte die Leiter dort „vollständig“ mit drei Ampel-Farben — **für das Band ist das zu eng.**

**Fazit Content-Frage (an Autor/Doctrine, nicht an Layout erfinden):**

1. Soll **„Zeitnah Arzt“** kanonische **vierte Handlungsstufe** im Template werden (viele Kapitel haben sie schon)?  
2. Bleibt **„Behandeln ohne besondere Aufmerksamkeit“** bewusst *draußen* (empfohlen: ja, im DA-Setting)?  
3. Scope **immer** außerhalb der Dringlichkeitszeilen?

Media/Graphics **dürfen** Zwischenstufen nicht erfinden, wo der Kapiteltext sie nicht hat — aber **dürfen und sollen** die Form so bauen, dass *wenn* „Zeitnah“ im Text steht, es **eigene Stufe** ist, nicht in „Gleichtags“ versteckt.

### 2.3 Multi-112 ist keine extra Leitersprosse

Bei ACS: *mehrere Situationen → gleiche Dringlichkeit 112*.

```text
RICHTIG (zwei Schichten in EINER Stufe):
  Stufe 112
    ├─ Handlung (einmal, laut): Sitzung aus · Ruhe · 112
    └─ Trigger-Cluster (Liste): wann gilt diese Stufe?

FALSCH (F2-C):
  Sprosse1 = Handlungssatz
  Sprosse2 = Triggerliste   ← wirkt wie „nächstniedrigere Stufe“
  Sprosse3 = NA | Scope nebeneinander  ← Dimensionen vermischt
  Sprosse4 = Treat
```

---

## 3. Was §3 *inhaltlich* ist (Cue-Matrix)

Vier **gleichgeordnete Beobachtungskanäle** desselben Erstkontakts:

```text
Anamnese ──┐
Beobachtung─┼──► „Wie zeigt sich die Entität im DA?“
Untersuchung┤
Verlauf ───┘
```

- **Keine** 2×2-Logik (kein Kreuzprodukt, kein Oben=subjektiv/Unten=objektiv zwingend im Content).  
- Reihenfolge im Text ist **narrativ** (Anamnese→…→Verlauf), nicht „vier Quadranten einer Matrix“.  
- **F3-B (farbige Tiles) hatte keinen Mehrwert** — nur Chunking-Dekoration.  
- **F3-A Tabelle** ist die ehrliche Form: Domäne | Merkmale.  
  Optional verfeinern: kompaktere Zeilen, KI-Zeile typografisch betont — **kein** Pseudo-Diagramm.

---

## 4. Was §4 *inhaltlich* ist (nicht „vier gleiche Pole“)

Vier Blöcke im Markdown **sehen** gleich aus (Bullet-Listen), haben aber **drei verschiedene Relationen**:

| Block | Relationstyp | Didaktische Rolle |
|-------|--------------|-------------------|
| **Erhärtet** | Evidenz *für* Arbeitshypothese H | accumulate support |
| **Passt eher nicht** | Evidenz *gegen* H (mit Caveats) | falsify / downweight |
| **Nicht übersehen** | *Andere* gefährliche Entitäten / Must-not-miss | protect against tunnel vision |
| **Trügerisch** | Abbildung: **falsches Alltags-/MSK-Frame → echte Gefahr** | error mode / mislabel map |

```text
                    ┌─ Erhärtet ────────────┐
   Hypothese H ─────┤                       ├──► Gewichtung H
                    └─ Passt eher nicht ────┘

   parallel:  Nicht übersehen  = {H₁, H₂, …}  ≠ „gegen H“

   separat:   Trügerisch =  Frame_falsch  ──maps-to──►  Gefahr_echt
```

**Deshalb war 2×2-Grid falsch:** Es suggeriert vier Zellen *derselben* Vergleichsmatrix.  
**Deshalb war die Maskenleiste mit „Label / Darunter“ falsch:** Das waren *Wireframe-Wörter*, keine didaktische Grafik.

### Trügerisch — was die Grafik *sein* soll

Nicht: Meta-UI.  
Sondern: **Fehlerrichtung** lesbar machen:

> Wenn jemand „Muskelkater“ denkt, **liegt darunter** oft der Infekt — und die Folge ist Therapieverzögerung.

Visuell z. B.:

- links: Alltags-/MSK-Frame (neutral/grau, Anführungszeichen)  
- Pfeil mit Bedeutung „maskiert / verkannt als“  
- rechts: echte Gefahr (danger) + kurze Konsequenz  
- **ohne** die Wörter „Label“ und „Darunter“ im Druck

---

## 5. Redesign-Hypothesen (korrigiert)

### F2 — Dringlichkeit (nur Dimension A)

| Element | Form |
|---------|------|
| **Stufen** | Vertikale **gewichtetete** Stufen: 112 ≫ gleichtags ≫ *(optional)* zeitnah ≫ Treat+Netz |
| **Farbe** | Ampel *darf* helfen (Rot/Amber/Teal), aber **Stufe + Wort** tragen die Bedeutung; Zwischenstufe „Zeitnah“ z. B. Blau/Info — **nicht** mit Scope-Grau verwechseln |
| **Multi-Trigger** | Innerhalb der 112-Stufe: eine Handlungszeile + Trigger-Bullets |
| **Scope** | **Separates** Element: schmale Scope-Leiste *unter* oder *neben* der Leiter, Überschrift klar „Nicht Dringlichkeit — Zuständigkeit“ |

### F3 — Klinische Hinweise

| Element | Form |
|---------|------|
| **Default** | Kompakte **Domänentabelle** (kein 2×2) |
| Optional | Einspaltige Definitionsliste — nur wenn Tabellenplatz knapper |

### F4 — Verdacht / Abgrenzung

| Element | Form |
|---------|------|
| **Für/Gegen H** | Zwei Spalten oder zwei gestapelte Blöcke: Erhärtet \| Passt eher nicht |
| **Nicht übersehen** | Eigene lautere Liste darunter (Must-not-miss), **nicht** vierte Kachel im Quadrat |
| **Trügerisch** | Eigene **Mapping-Liste** Frame→Gefahr (ohne Meta-Labels) |

### F2-C Hard-Stop

| Element | Form |
|---------|------|
| Nur wenn | Eine dominante 112-Handlung (ACS, Anaphylaxie, CES-Stopp) |
| Struktur | **Ein** roter Stopp-Block (Handlung) + Trigger darunter *als Teil desselben Blocks* + darunter separate kleinere Stufen NA / zeitnah / Treat + **Scope separat** |

---

## 6. Autor-Fragen (Content, nicht Layout)

1. Template: **„Zeitnah Arzt“** als kanonische Zeile zwischen gleichtags und Treat+Netz?  
2. Bleibt **Treat ohne Netz** bewusst ausgeschlossen?  
3. Soll Scope in der Markdown-Tabelle §5 bleiben (Autoren-Bequemlichkeit) aber im **Druck** immer visuell entkoppelt werden? (Media-Empfehlung: **ja**)

---

## 7. Nächster Artefakt-Schritt

- Dieser Text = Design-Reasoning-Korrektur  
- Spike **Phase 1.1** (neu): F2/F3/F4 nach obigen Beziehungen, Erysipel + ACS, **ohne** Scope-in-Ladder, **ohne** Meta-„Label“  
- Form Specs F2–F4 anpassen  
- Phase-1-Original als **verworfene Varianten** markieren (Lernspur), nicht als Band-Default
