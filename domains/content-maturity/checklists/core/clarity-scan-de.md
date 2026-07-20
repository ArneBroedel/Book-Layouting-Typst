# Checklist: German didactic clarity scan (optional)

**Opt-in** (`include_clarity_scan: true`). **Flag only** — do not auto-rewrite SoT.  
Not a fiction “anti-AI chaos” engine. Default severity: `nit` or `should`.

## Patterns to flag

- [ ] **Nominalstil-Stack:** long noun chains where a clear verb-action would help learners  
- [ ] **Empty intensifiers:** “besonders wichtig ist, dass…”, “es gilt zu beachten, dass…” without payload in the same sentence  
- [ ] **Unclear passive:** who must act? (bad when procedure/ownership matters)  
- [ ] **Term churn:** same concept renamed without reason (→ also `konsistenz`)  
- [ ] **Paragraph without claim/action** in sections that should gatekeep or instruct  
- [ ] **Filler hedges** that soft-sell Critical Claims into untestable mush  

## MUST NOT

- Invent clinical content to “improve style”  
- Apply chaos / random voice breaks  
- Use English MFA cliché lists as hard fail  
- Silent-merge rewrites  

## Output

Review Report → **Clarity scan DE** table; optional surgical patches only if `pass: review-with-patches` and severity ≥ `should`.
