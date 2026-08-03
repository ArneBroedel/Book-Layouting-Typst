# Rollen & Ablauf (v0.2 + Content-Reife in Arbeit) — Kurzüberblick

Ausführlich: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · Grenzen: [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md)  
**Skill collaboration (complete):** index [`skill-collaboration/`](skill-collaboration/) · **operational short law:** [`COLLABORATION-CONTRACT.md`](../toolset/skill-pack/COLLABORATION-CONTRACT.md) (controllers, greens, session law, done — no full-text fork here) · provenance T1–T3 under `_archive/` 
**Content-Reife-Schleife (MVP archived):** [`_archive/content-maturity/`](_archive/content-maturity/) → spezifiziert C0–C5 für CONSENSUS v0.3; live kit `domains/content-maturity/`

## Produkte

Vollständig: [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md) **v0.3** (ADR 50–59).

| ID | Produkt | Heimat |
|---|---|---|
| **C** | Content-Werk | externes Repo (Kursbuch) = **Inhalts-SoT**; Prozess-Kit übergangsweise `domains/content-maturity/` |
| **B** | Domain-Media (Medizin) | `domains/medical/` → später eigenes Repo |
| **A** | Print-Layout-Plattform | **dieses Repo** (`packages/`, `toolset/`) |
| **W** | Web-Layout (Astro o. ä.) | noch nicht implementiert; Grenzvertrag in PRODUCT-BOUNDARIES v0.3 |

## Rollen

| Rolle | Track / Ort | Tut | Tut nicht |
|---|---|---|---|
| **Autor** | C extern | Fachtext, Claims; Review-Findings mergen | Layout |
| **Content-Review** | C · Track [`_archive/content-maturity`](_archive/content-maturity/) · extensions [`_archive/agentic-adaptations`](_archive/agentic-adaptations/) | Q1/Q2-Lektorat; evaluate-only oder Patches; floor (`block`⇒no freeze); optional Personas/Clarity | Production-`.typ`; still Claims mutieren; Media ersetzen; Score-Loops |
| **Content-Orchestrator** | C · `content-orchestrator` skill | Route card C1–C4 → richtiger Skill/Human-Checkpoint (H1–H5) | Brief/Compose selbst ausführen; Text umschreiben |
| **Media** | B `domains/medical/` | Freier Brief, Accept (Q3) | Body/Claims ändern |
| **Graphics** | B `domains/medical/` · skill `medical-graphics` | **Phase A** free vision (Inhalt+Didaktik); **Phase B** recreate/refine/accept-asset; Decision Note; Assets | Ideal ersetzen; Claims erfinden; Accept allein; Free-Gen mit SVG-Klon-Zwang |
| **Tech** | A `toolset/compose/` | Feasibility, Spike, Compose (inkl. Embed Winner) | Ideal kleinreden; Content „verbessern“; Graphic-Mode still weglassen |
| **Validator** | A Script | Whitelist, Claims, Compile | Auto-Heal; redaktionell heilen |
| **Imprimatur** | C Human-only | Druck-/Release-Freigabe | Agent-Autopilot |
| **Katalog** | A core + B recipes | Forms / Rezepte | Media-Denkverbot |

## Ablauf

**Heute (v0.2 implementiert + Graphics MVP):**

```text
C Content → B Media Brief
         → B Graphics Phase A free vision (ambitionierte Visual-Units)
         → A Feasibility ◄──► B Graphics Phase B (recreate|refine|accept-asset)
         → Spike → B Accept → A Compose → A Validate → PDF
```

**Ziel MVP v0.3 (content-maturity, nach Gemini-Review):**

```text
C1 Draft → C2 Content-Review (core+claims+safety-flags, max 2 Runden)
    → C3 Freeze (Human-only, git:|sha256: pin)
    → B Media Brief (production; exploration nur mit Marker)
    → A Feasibility ◄──► B Graphics → Spike → B Accept
    → A Compose → A Validate --profile production → PDF
    → C4 Proof (Human checklist)
# C5 Imprimatur hard-gate → v0.4
```

**Multi-Channel (PRODUCT-BOUNDARIES v0.3):** nach B Accept (Scope `print` \| `web` \| `both`)  
→ **A** Print und/oder **W** Web konsumieren dieselbe `content_revision` + accepted Asset-IDs.  
W ist Grenzvertrag; Implementierung erst mit Web-Pilot.

Multi-root UX: `workspaces/kursbuch-layout.code-workspace` (A+C; später +B/+W).
