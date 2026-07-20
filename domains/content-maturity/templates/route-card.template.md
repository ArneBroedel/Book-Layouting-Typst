# Route card (content-orchestrator)

```yaml
chapter_id: ""
content_path: ""
content_status: draft           # draft | review | frozen | proofed | …
content_revision: ""            # if known
round: 0
floor_status: unknown           # clear | blocked | unknown
date: YYYY-MM-DD
orchestrator: ""
```

## State snapshot

| item | path / value |
|---|---|
| Latest review report | |
| Freeze record | |
| Media brief / class | |
| Accept | |
| chapter.typ / PDF | |
| Proof record | |

## Next

| field | value |
|---|---|
| **next_skill** | content-review \| human-freeze \| media-brief \| compose-chapter \| human-proof \| human-triage \| stop |
| **next_artifact** | path or template to fill |
| **checkpoint** | H1–H5 or — |
| **stop_reason** | (if stop / human-triage) |

## Explicit non-actions (this card)

- Did **not** write production `.typ`  
- Did **not** rewrite claims/body  
- Did **not** author a full Media Brief body (handoff only unless user switched to media-brief)  
