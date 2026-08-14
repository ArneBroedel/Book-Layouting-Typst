# Pins — channel-local snapshots (not SoT)

Each folder is a **frozen snapshot** that W is allowed to render:

```text
pins/<chapter_id>/
  release.yaml   # contracts chapter-release package (validate with bookkit)
  content.md     # C body copy at content_revision — not the C repo
  accept.md      # B Accept excerpt; must include channel_scope web|both
```

**Rules**

1. Do **not** edit these files as if they were the manuscript. Update the content
   repo (C), freeze a new revision, then replace the snapshot.
2. `content_revision` must be `sha256:<64 hex>` of **this** `content.md` (or
   `git:<short>` from the C repo). If the file changes, re-hash.
3. The Astro app reads **only** this tree. It must not import `src/chapters/`
   or `domains/medical/` as source of truth.

Validate a pin:

```bash
# from monorepo root
./scripts/bookkit boundaries check-release channels/web/pins/<id>/release.yaml --check-paths
```
