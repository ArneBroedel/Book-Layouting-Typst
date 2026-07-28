# Decision note — Pause unsupervised anatomical depiction

- **date:** 2026-07-29  
- **owner:** Human (Media/Fach) + agent harvest  
- **scope:** Domain B free vision / agent anatomy code for textbook figures  

## Decision

**Pause** production of unsupervised **anatomical / body-structure** figures (free vision *and* agent-coded “anatomy schemas”).

## Why

Repeated attempts (Kompartment series: multi-panel, CT-cuts, comic legs, fascial shells, sweet-spot variants) did **not** yield Accept-ready quality. Human assessment: often **absurd or professionally embarrassing** for a medical textbook.

The intended sweet spot (schematic but pathophysiologically clear, not atlas-fake) was **not** reliably achieved.

## Do instead

| Unit type | Realization |
|-----------|-------------|
| Urgency / SCOPE | code (`us-*`) |
| Discrimination / mimic | code maps |
| Clinical criteria | **text/chips** (e.g. `criteria-compartment-code`) — no body drawing |
| True anatomy later | **H-Gfx** + human gold only |

## Explicit non-goals (for now)

- More free-vision anatomy retries as default workflow  
- Shipping demoted PNG series as winners  

## Reopen criteria

Human decides to reopen **H-Gfx** for a named unit, with human-drawn or human-supervised gold asset — not agent-only free gen.
