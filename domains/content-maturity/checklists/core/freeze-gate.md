# Freeze gate

**Floor semantics:** freeze is valid only if the review **floor is clear** —  
`block_count = 0` / `floor_status: clear`. There is **no** average score that overrides a single `block`.

Freeze is valid only if **all** hold:

1. [ ] Review Report exists for this round set  
2. [ ] **`floor_status: clear`** (open **`block` count = 0**)  
3. [ ] Agent may recommend `ready_for_freeze`; **Human** filled name + date on freeze record (**H1**)  
4. [ ] `content_revision` is `git:<short>` **or** `sha256:<hex>` (not a date)  
5. [ ] Pin matches the content file commit or bytes  
6. [ ] Remaining `should`/`nit` listed and accepted (or none)  

If any fail → **do not freeze**. After **2** review rounds without clearance → **H3 Human triage** (circuit breaker).

See `checkpoints.md`.
