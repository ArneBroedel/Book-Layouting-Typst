# Rollen & Ablauf (v0.3.1 multi-channel + Content-Reife)

Ausführlich: [`CONSENSUS-v0.md`](CONSENSUS-v0.md) (Rollen-Theorie; Schritt-Buchstaben dort **nicht**
mit Produkt-IDs verwechseln) · Grenzen: [`PRODUCT-BOUNDARIES.md`](PRODUCT-BOUNDARIES.md) v0.3.1 ·
Contracts: [`../contracts/README.md`](../contracts/README.md)  
**Collaboration (who leads / done / CLEAN):** [`COLLABORATION-CONTRACT.md`](../toolset/skill-pack/COLLABORATION-CONTRACT.md) — cite, do not fork.  
Content-Reife live kit: `domains/content-maturity/` (track archived: [`_archive/content-maturity/`](_archive/content-maturity/)).

## Produkte

| ID | Produkt | Heimat |
|---|---|---|
| **C** | Content-Werk | externes Repo (Kursbuch) = **Inhalts-SoT**; Prozess-Kit übergangsweise `domains/content-maturity/` |
| **B** | Domain-Media (Medizin) | `domains/medical/` → später eigenes Repo |
| **A** | Print-Layout-Plattform | **dieses Repo** (`packages/`, `toolset/`) |
| **W** | Web-Layout (Astro o. ä.) | reserved scaffold `channels/web/` — **Astro not started**; contracts + `bookkit boundaries` |

## Rollen

Produkt-IDs (**C / B / A / W**) und Rollen (**Autor, Media, Tech, Graphics, Validator**) sind
verschiedene Achsen. CONSENSUS nutzt historisch Schritt-Buchstaben `[A] Media` / `[B] Tech` —
**nicht** als Produkt-IDs lesen.

| Rolle | Track / Ort | Tut | Tut nicht |
|---|---|---|---|
| **Autor** | C extern | Fachtext, Claims; Review-Findings mergen | Layout |
| **Content-Review** | C · skill `content-review` · provenance [`_archive/content-maturity`](_archive/content-maturity/) | Q1/Q2-Lektorat; evaluate-only oder Patches; floor (`block`⇒no freeze) | Production-`.typ`; still Claims mutieren; Media ersetzen |
| **Content-Orchestrator** | C · skill `content-orchestrator` | Route card C1–C4 → Skill/Human-Checkpoint (H1–H5) | Brief/Compose selbst ausführen; Text umschreiben |
| **Media** | B `domains/medical/` · skill `media-brief` | Freier Brief, Form Spec, Design CLEAN, Accept | Body/Claims ändern; Production-`.typ` |
| **Graphics** | B · skill `medical-graphics` · playbook `00–11` | Free vision → claim audit → realize → Visual CLEAN | Ideal ersetzen; Claims erfinden; Accept allein |
| **Tech** | A `toolset/compose/` · skill `compose-chapter` | Feasibility, Spike, Compose (inkl. Embed Winner) | Ideal kleinreden; Content „verbessern“ |
| **Validator** | A CLI `bookkit validate` | Whitelist (advisory), Claims, Compile | Auto-Heal; redaktionell heilen; CLEAN zertifizieren |
| **Imprimatur** | C Human-only | Druck-/Release-Freigabe | Agent-Autopilot |
| **Katalog** | A core + B recipes | Forms / Rezepte | Media-Denkverbot |

## Ablauf (lebend, v0.3.1)

```text
C  Draft → Content-Review → Human Freeze (content_revision)
        │
        ▼
B  Media Brief / Form Spec / Design Contract
        │  Design Critic → Design CLEAN
        ├─► open-assets (iff realism/icons; open_asset_scan required|optional|skip)
        ├─► Graphics realize → unit Visual CLEAN
        ▼
B  Accept (quality packet; channel_scope print | web | both)
        │
        ├──────────────────┬──────────────────┐
        ▼                  ▼                  │
A  Compose/Validate     W  consume when       │
   → PDF / Print           a web pilot exists │
        │                  │                  │
        └────────┬─────────┘                  │
                 ▼                            │
C  Proof / Imprimatur (per channel or joint)  │
```

**Heute implementiert:** Freeze → B → Accept → **A** Print → Proof.  
**W:** Scaffold only — kein Astro-Runtime; gleicher Contract, sobald ein Pilot startet.  
**Historisch (v0.2):** Brief → Feasibility/Spike → Accept ohne Freeze-Pflicht als Default.

Release package: `contracts/` · `./scripts/bookkit boundaries check-release …` · tree: `check-tree`.

Multi-root UX: `workspaces/kursbuch-layout.code-workspace` (A+B+C+W — kein fünftes Produkt).
