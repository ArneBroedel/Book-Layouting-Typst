# Produkt- & Repo-Grenzen (v0.3.1)

**Status:** accepted direction (2026-08-03); **hard CLI contracts live** (ADR 60)  
**Supersedes:** v0.2 (2026-07-20) — three products only; print-only presentation  
**Ergänzt:** [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · [`ROLES-AND-FLOW.md`](ROLES-AND-FLOW.md) · [`../contracts/README.md`](../contracts/README.md)  
**Track (archived):** [`_archive/platform-boundaries/`](_archive/platform-boundaries/) · split deferred [`_archive/workspace-split/phase3-split.md`](_archive/workspace-split/phase3-split.md)

**How to verify boundaries today:**

```bash
./scripts/bookkit boundaries check-tree
./scripts/bookkit boundaries check-release contracts/fixtures/pass_print_minimal.yaml
./scripts/bookkit doctor --root .   # includes tree check on studio root
```

---

## Ziel

- **Text, Medien/Assets und Präsentation** sind getrennte Aufgabenbereiche mit eigenen SoTs und Rollen.  
- **Ein Inhalt** (C) und **freigegebene Assets** (B) speisen **mehrere Kanäle** (Print **A**, Web **W**), ohne Content- oder Asset-Fork.  
- **Dieses Repo** bleibt primär **Print-Layout-Plattform (A)** plus transitional **Domain-Media (B)**; Content-SoT bleibt **extern (C)**.  
- Trennung **ohne** Micro-Repo-Chaos und **ohne** Alles-in-einem-Brei: modular monorepo zuerst, physischer Split nur triggerbasiert.

---

## Vier Produkte / Kanäle

| ID | Produkt | Verantwortung | Default-Heimat (Ziel) | Heute (Übergang) |
|---|---|---|---|---|
| **C** | Content-Werk | Fachtext, Claims, Quellen, Review, Freeze, Proof/Imprimatur | Content-Repo (z. B. Kursbuch) | **extern**; Prozess-Kit transitional `domains/content-maturity/` |
| **B** | Domain-Media | Mediendesign-Intent, open-assets, Graphics, freigegebene Assets + Rechte | eigenes Repo *später* | `domains/medical/` hier (auslagerbar) |
| **A** | Print-Layout-Plattform | Typst/bookkit, compose, validate, prepress, PDF/X | **dieses Repo** | dieses Repo (`packages/`, `toolset/`, …) |
| **W** | Web-Layout | Astro (o. ä.) HTML/CSS, Web-Komponenten, Routing, Web-Build | eigenes Repo *oder* `channels/web/` | **Scaffold** `channels/web/` + OWNERSHIP; Runtime/Astro erst mit Web-Pilot |

Optional: Multi-root **Workspace-Datei** nur als UX (kein fünftes Produkt mit Business-Logik).

### Phasen-Mapping (Arbeitsfolge)

| Phase | Produkt | Kurz |
|---|---|---|
| 1 Text ausarbeiten | **C** | Draft → Review → **Human Freeze** |
| 2 Assets suchen / erstellen | **B** | Brief/Design → open-assets und/oder Graphics → **Visual CLEAN** → **Accept** |
| 3a Buchlayout | **A** | Compose (post-Accept) → validate → PDF / Print |
| 3b Weblayout | **W** | Consume frozen C + accepted B → Astro build |

A und W sind **Präsentationskanäle**. Sie teilen **C-Revision** und **B-Asset-IDs**, nicht Code und nicht eine gemeinsame „Layout-Wahrheit“.

---

## Was wohin gehört

| Artefakt | Produkt | Pfad-Konvention (Übergang) |
|---|---|---|
| `packages/bookkit*`, CLI, showcase, fonts, prepress | **A** | `packages/`, `scripts/`, `src/`, `prepress/` |
| form-catalog **core**, compose engine, `compose-chapter` | **A** | `toolset/form-catalog/core/`, `toolset/compose/`, skill-pack |
| Genre-Rezepte, Gold-Briefs, `media-brief` / `medical-graphics` / `open-assets` | **B** | `domains/medical/` → später eigenes Repo |
| Domain-Assets (`MANIFEST`, license sidecars, accepted SVG/PNG) | **B** | `domains/medical/assets/<slug>/` |
| Kapitel-MD, Claims, Literatur-SoT | **C** | **extern** — nie dauerhaft hier |
| Content-Reife-Prozess (Review, Freeze, Proof, Imprimatur) | **C** | Scaffold `domains/content-maturity/` → Split nach C |
| Astro-Projekt, Web-Komponenten, `public/`-Derivates *mit Provenance* | **W** | `channels/web/` (scaffold) oder sibling repo — **nicht** in `packages/bookkit` |
| Shared contracts (release package schema/templates/fixtures) | **shared** | `contracts/` — engine `toolset/boundaries/` · CLI `bookkit boundaries` |
| Pilots die nur Plattform dogfooden | **A** | `pilots/` (kein Content-SoT) |
| Kursbuch-Layout-Outputs (Print) | **A** (+ B-Artefakte) | `pilots/kursbuch-*`, compose outputs — Content bleibt C |
| Research / Template-Korpus | **R** (kein Produktionsprodukt) | `research/`, `templates/` — außerhalb Default-Agent-Kontext |

---

## Shared Contracts (Kopplung C → B → A|W)

Kopplung läuft über **versionierte Pins und Artefakte**, nicht über Chat oder ungepinnte `main`.

### 1. Content Contract (C → B, A, W)

| Feld / Artefakt | Regel |
|---|---|
| Content body (MD o. ä.) | SoT nur in **C** |
| Critical Claims | copy-through; keine stillen Paraphrasen in A/B/W |
| `content_revision` | nur `git:<short>` oder `sha256:<filehash>` (siehe CONSENSUS v0.3) |
| Freeze | **Human-only** vor Production-Brief (B) und Production-Compose (A/W) |

### 2. Asset Contract (B → A, W)

Pro Asset-Slug unter B (Policy: `domains/medical/assets/CANONICAL.md`, open-assets Ampel):

| Feld | Pflicht für Accept | Kanal |
|---|---|---|
| `id` / slug | ja | A + W |
| `status` (`accepted` / …) | ja | A + W |
| license + attribution + permalink | ja (third-party) | A + W |
| canonical file(s) (SVG preferred) | ja | A + W |
| `alt` / caption source | ja wo figure | A + W |
| `variants.print` (PPI, optional CMYK notes) | wenn Print | **A** |
| `variants.web` (max-width, WebP/AVIF optional) | wenn Web | **W** |

**Regel:** A und W **referenzieren** freigegebene B-Assets. Sie dürfen **Derivates** erzeugen (Resize, WebP, PDF-X raster), müssen aber Provenance zum MANIFEST/Slug behalten. Keine stille zweite SoT unter `src/assets` oder Astro `public/` ohne Link zurück nach B.

### 3. Intent & Accept (B)

| Artefakt | Owner | Gilt für |
|---|---|---|
| Media Brief / Form Spec / Design Contract | B Media | didaktische Darstellung (kanal-agnostisch zuerst) |
| Design CLEAN / Visual CLEAN | B Critic-Rollen | siehe Collaboration Contract |
| Accept / Quality Packet | B Media | Scope: `print` \| `web` \| `both` (Default Produktion historisch: print; web explizit setzen) |

Kanal-spezifische Wünsche (Doppelseite vs. progressive disclosure) sind **dünne Anhänge**, keine zweite Content-Wahrheit.

### 4. Chapter Release Package (Orchestrierung) — **hard schema**

| Artefakt | Pfad |
|---|---|
| JSON Schema | `contracts/schemas/chapter-release.schema.json` |
| Template | `contracts/templates/chapter-release.template.yaml` |
| Fixtures | `contracts/fixtures/` |
| Engine | `toolset/boundaries/` |
| CLI | `./scripts/bookkit boundaries check-release PATH` |

```yaml
schema_version: "1"
chapter_id: string
content_revision: "git:…" | "sha256:…"   # only these forms
channel_scope: print | web | both        # ADR 53
assets:
  - id: string                           # B slug
    status: accepted | draft | gap | rejected
    path: optional
accept_paths: []                         # quality packet / accept record
channels:
  print:
    status: pending | composed | validated | proofed | n/a
    outputs: []
  web:
    status: pending | built | proofed | n/a
    outputs: []
design_clean: path|bool|null
visual_clean: path|bool|null
```

**Rules enforced by CLI:** valid freeze pin; scope requires matching `channels.*` keys; asset statuses from enum; optional `--check-paths` for accept/asset paths on disk.

Orchestratoren (`book-production-orchestrator`, später Web-Route) **routen und loggen** dieses Paket; sie ersetzen weder Freeze noch CLEAN noch Accept.

**Tree ownership check:** `./scripts/bookkit boundaries check-tree` (OWNERSHIP markers, contracts/, channels/web scaffold, no `domains/medical` imports in `packages/bookkit`).

### 5. Plattform-Pins

1. **SemVer bookkit** + **form-catalog `version`** — Consumer (A-intern und externe Print-Consumer) pinnen.  
2. **B** pinnt bookkit/catalog, wenn Domain-Typst-Libs A nutzen.  
3. **W** pinnt `content_revision` + Asset-Release (B), nicht bookkit-Foundation als Runtime.  
4. **Gaps:** Domain meldet `catalog-gap` → Issue/PR nach A (`planned` → `stable`).  
5. **Skills:** A generisch; B domain; W web-spezifisch (noch nicht SoT); C editorial — Workspace provisioniert nach Bedarf.

---

## Ablauf (Multi-Channel)

```text
C  Draft → Content-Review → Human Freeze (content_revision)
        │
        ▼
B  Media Brief / Design CLEAN
        │
        ├─► open-assets (iff realism/icons)
        ├─► Graphics realize → Visual CLEAN
        ▼
B  Accept (quality packet; channel scope print|web|both)
        │
        ├──────────────────┬──────────────────┐
        ▼                  ▼                  │
A  Compose/Validate     W  Astro consume     │
   → PDF / Print           → Web build        │
        │                  │                  │
        └────────┬─────────┘                  │
                 ▼                            │
C  Proof / Imprimatur (per channel or joint)  │
```

**Normalfall Print (heute implementiert):** Freeze → B → Accept → A → Proof.  
**Normalfall Web (Ziel):** Freeze → B → Accept(scope includes web) → W → Proof.  
**Parallel A‖W** nur nach Accept mit Scope `both` (oder zwei Accepts).

Iterations- und CLEAN-Regeln: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · [`COLLABORATION-CONTRACT.md`](../toolset/skill-pack/COLLABORATION-CONTRACT.md).

---

## Repo-Strategie

```text
JETZT  → Modular Monorepo für A + B (harte OWNERSHIP + Ordnergrenzen)
         C extern; Multi-root UX A+C[+B]
SPÄTER → subtree split nur bei Trigger (D2 workspace-split):
         • 2. Fachdomäne / 2. Werk in Produktion, oder
         • externes Autoren-/Grafik-/Web-Team mit getrennten Rechten, oder
         • Plattform-Releases durch Domain-/Web-Noise blockiert, oder
         • tracked size trotz Purge/LFS schmerzhaft, oder
         • Human nennt Ziel-Remotes und fordert Split
W      → eigener Checkout (Repo oder `channels/web/`) sobald erster Web-Pilot startet;
         nicht in bookkit-Foundation mischen
```

### Auslagerungs-Trigger (B)

Unverändert sinngemäß:

- zweites Werk / zweite Domäne, **oder**  
- `domains/medical/` stabile Skills + Gold-Set + eigene CI, **oder**  
- A-Releases durch B-Noise blockiert.

Methode: `git subtree split` — Checkliste: [`_archive/workspace-split/phase3-split.md`](_archive/workspace-split/phase3-split.md).

### Content-maturity split (C process)

1. unter `domains/content-maturity/` bleiben (nicht `packages/`, nicht compose-Engine),  
2. **keine** Kapitel-SoT (nur Fixtures),  
3. bei Trigger nach **C** (`_archive/content-maturity/SPLIT-CHECKLIST.md`).  

A behält Freeze/Revision-**Gates** in validate/docs. B verlangt Freeze für Production-Briefs.

### W-Heimat (Entscheidung bei Pilot-Start)

| Option | Wann |
|---|---|
| Sibling-Repo `kursbuch-web` (o. ä.) | Web-Team/CI getrennt; empfohlener Default bei ernsthaftem Dual-Publish |
| `channels/web/` in diesem Monorepo | früher Pilot, ein Team, noch keine Split-Kosten |

Beide Optionen unterliegen demselben Contract (C-Pin + B-Assets). Workspace-UX: Roots `C | B | A | W`.

---

## Was dieses Repo **nicht** ist

- Autor-Workspace / dauerhafte SoT für Kursbuch-Markdown (**C**)  
- Dauerhafte Heimat der Content-Reife-Schleife (nur transitional `domains/content-maturity/`)  
- Dauerhafte „alles Medien“-Heimat nach B-Split (heute: `domains/medical/` ist B-in-A)  
- Astro/Web-Anwendungs-SoT (**W** — eigener Kanal)  
- „Ein Agent sieht alles und macht alles“ ohne Rollen-Artefakte  
- Zweite Content- oder Asset-SoT unter Showcase/`src/chapters` oder Web-`public/`

---

## Workspace-UX

| Root (Name) | Path (Beispiel) |
|---|---|
| A — Print layout platform | dieses Repo |
| B — Media & assets | `domains/medical` (gleicher Clone) oder später eigenes Repo |
| C — Content | `../../Kursbuch5` (o. ä.) |
| W — Web layout | `channels/web` (scaffold) |

Live: `workspaces/kursbuch-layout.code-workspace` (A+B+C+W roots).  
Nur Checkout-Hilfe — **keine** Business-Logik im Workspace-File.

---

## ADR (v0.3 — Multi-Channel & Boundaries)

Fortsetzung der Produkt-ADRs aus CONSENSUS v0.2 (19–26). Nummern **50+** bewusst, um Kollisionen mit Content-/Compose-ADRs in CONSENSUS zu vermeiden.

| ADR | Entscheidung |
|---|---|
| **50** | **Vier logische Produkte:** C Content · B Domain-Media · A Print-Layout-Plattform · W Web-Layout. |
| **51** | **Kanäle teilen C+B, nicht Code:** Print (A) und Web (W) konsumieren dieselbe `content_revision` und dieselben accepted Asset-IDs; keine gemeinsame Layout-SoT. |
| **52** | **B = Intent + Rechte + Visuals**, nicht nur Dateiordner: Brief/Design → (open-assets |) Graphics → CLEAN → Accept vor Kanal-Produktion. |
| **53** | **Accept trägt Channel-Scope** `print` \| `web` \| `both`. Fehlt Scope historisch → gilt als `print` (Backcompat). |
| **54** | **Asset-Derivates erlaubt in A/W**, SoT und Lizenz bleiben B (MANIFEST/sidecars); Provenance Pflicht. |
| **55** | **Chapter Release Package** ist das orchestrierbare Bündel (Pins + Accept + Kanalstatus); Orchestrator routet, craftet nicht. |
| **56** | **W hat Scaffold ab v0.3** (`channels/web/` + OWNERSHIP); Astro-Runtime erst mit bewusstem Web-Pilot. Kein Astro in `packages/bookkit`. |
| **60** | **Chapter release package + tree check are hard CLI contracts** under `contracts/` + `toolset/boundaries` + `bookkit boundaries` (not docs-only). |
| **57** | **Repo-Default bleibt modular monorepo (A+B)**; physische Splits (B, C-process, W, R) nur **triggerbasiert** (workspace-split D2 + Triggerliste oben). |
| **58** | **Arbeitsfolge verbindlich für Produktion:** C Freeze → B Accept → dann A und/oder W. Kein Production-Compose/-Build ohne Freeze; keine Visual-Units ohne Accept (Smoke/Lab-Ausnahmen dokumentiert). |
| **59** | **Multi-root Workspace = UX only** — kein fünftes Produkt. |

### Verworfen / nicht Ziel

| Idee | Status |
|---|---|
| Vier Soft-Repos „weil aufgeräumt“ ohne Trigger | **verworfen** (Kosten > Nutzen) |
| Web als Unterordner von bookkit foundation | **verworfen** |
| Content-MD nach A/B kopieren als SoT | **verworfen** |
| Ein Super-Agent ohne Artefakt-Firewall | **verworfen** |
| Asset-SoT nur im Print-`src/assets` oder nur in Astro `public/` | **verworfen** |

---

## Changelog

| Version | Datum | Änderung |
|---|---|---|
| **v0.3.1** | 2026-08-03 | Hard CLI: `contracts/` + `toolset/boundaries` + `bookkit boundaries`; `channels/web` scaffold; multi-root A+B+C+W; ADR **60** |
| **v0.3** | 2026-08-03 | Produkt **W** (Web); A als Print-Kanal geschärft; Shared Contracts; Release Package; ADR 50–59; Phasen Text→Assets→Kanäle |
| v0.2 | 2026-07-20 | A/B/C; modular monorepo; B/C transitional paths |
| v0.1 | — | in CONSENSUS/Rollen aufgegangen |

---

## Related

- Rollen & Flow: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · [`ROLES-AND-FLOW.md`](ROLES-AND-FLOW.md)  
- Collaboration short law: [`../toolset/skill-pack/COLLABORATION-CONTRACT.md`](../toolset/skill-pack/COLLABORATION-CONTRACT.md)  
- Shared contracts: [`../contracts/README.md`](../contracts/README.md) · engine `toolset/boundaries/`  
- Channels: [`../channels/README.md`](../channels/README.md) · W [`../channels/web/OWNERSHIP.md`](../channels/web/OWNERSHIP.md)  
- B ownership / assets: [`../domains/medical/OWNERSHIP.md`](../domains/medical/OWNERSHIP.md) · [`../domains/medical/assets/CANONICAL.md`](../domains/medical/assets/CANONICAL.md)  
- Workspace UX: [`../workspaces/`](../workspaces/)  
- Split deferred: [`_archive/workspace-split/`](_archive/workspace-split/)  
- Consumer (Print): [`../docs/CONSUMER.md`](../docs/CONSUMER.md)
