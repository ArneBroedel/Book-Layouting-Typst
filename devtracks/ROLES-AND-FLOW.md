# Rollen & Ablauf (v0.2 + Content-Reife in Arbeit) — Kurzüberblick

Ausführlich: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) · Grenzen: [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md)  
**Content-Reife-Schleife (Ausarbeitung):** [`content-maturity/`](content-maturity/) → spezifiziert C0–C5 für CONSENSUS v0.3

## Produkte

| ID | Produkt | Heimat |
|---|---|---|
| A | Layout-Plattform | **dieses Repo** (`packages/`, `toolset/`) |
| B | Domain-Media (Medizin) | `domains/medical/` → später eigenes Repo |
| C | Content-Werk | externes Repo (Kursbuch) = **Inhalts-SoT**; Prozess-Kit übergangsweise `domains/content-maturity/` |

## Rollen

| Rolle | Track / Ort | Tut | Tut nicht |
|---|---|---|---|
| **Autor** | C extern | Fachtext, Claims; Review-Findings mergen | Layout |
| **Content-Review** | C · Track [`content-maturity`](content-maturity/) · extensions [`agentic-adaptations`](agentic-adaptations/) | Q1/Q2-Lektorat; evaluate-only oder Patches; floor (`block`⇒no freeze); optional Personas/Clarity | Production-`.typ`; still Claims mutieren; Media ersetzen; Score-Loops |
| **Content-Orchestrator** | C · `content-orchestrator` skill | Route card C1–C4 → richtiger Skill/Human-Checkpoint (H1–H5) | Brief/Compose selbst ausführen; Text umschreiben |
| **Media** | B `domains/medical/` | Freier Brief, Accept (Q3) | Body/Claims ändern |
| **Tech** | A `toolset/compose/` | Feasibility, Spike, Compose | Ideal kleinreden; Content „verbessern“ |
| **Validator** | A Script | Whitelist, Claims, Compile | Auto-Heal; redaktionell heilen |
| **Imprimatur** | C Human-only | Druck-/Release-Freigabe | Agent-Autopilot |
| **Katalog** | A core + B recipes | Forms / Rezepte | Media-Denkverbot |

## Ablauf

**Heute (v0.2 implementiert):**

```text
C Content → B Media Brief → A Feasibility ↔ Spike → B Accept
         → A Compose → A Validate → PDF
```

**Ziel MVP v0.3 (content-maturity, nach Gemini-Review):**

```text
C1 Draft → C2 Content-Review (core+claims+safety-flags, max 2 Runden)
    → C3 Freeze (Human-only, git:|sha256: pin)
    → B Media Brief (production; exploration nur mit Marker)
    → A Feasibility ↔ Spike → B Accept
    → A Compose → A Validate --profile production → PDF
    → C4 Proof (Human checklist)
# C5 Imprimatur hard-gate → v0.4
```

Multi-root UX: `workspaces/kursbuch-layout.code-workspace` (später + C editorial tree).
