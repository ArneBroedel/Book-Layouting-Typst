# Book production boards

Runtime SoT for **`book-production-orchestrator`**.

```text
toolset/orchestration/book-production/<book-id>/
  kickoff.md
  board.md      ← state of truth
  run-log.md    ← append-only history
  route.md      ← current next step only
```

Create via skill kickoff — do not hand-edit without logging.

Status:

```bash
./scripts/book-production-status.sh <book-id>
```

Templates: `toolset/skill-pack/book-production-orchestrator/templates/`  
Runbook: `docs/BOOK-PRODUCTION-RUNBOOK.md`
