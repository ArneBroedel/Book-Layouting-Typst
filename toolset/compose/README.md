# compose (Produkt A — technical engine)

Domain-agnostic composition tooling for the platform.

## Planned layout (Track compose-pipeline)

```text
toolset/compose/
  README.md
  validate/           ← whitelist, claims, compile hooks, post-hoc intent
  templates/          ← feasibility note template (generic)
  spikes/README.md    ← how to run a spike build
```

**Does not own:** medical briefs, genre recipes → `domains/medical/`.  
**Consumes:** `toolset/form-catalog/core` + optional domain overlay path via config.
