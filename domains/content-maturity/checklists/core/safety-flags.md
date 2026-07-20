# Checklist: Safety flags (MVP · identify only)

**NEVER** invent doses, algorithms, guidelines, or citations.  
**DO** flag language and gaps as **questions for the author**.

## Language patterns

- [ ] Absolute wording (“immer”, “nie”, “jeder”, “muss stets”) — flag location
- [ ] Imperative clinical actions without conditions — flag if underspecified
- [ ] Contradictory action sequences in the same section

## Coverage questions (ask, don’t fill)

- [ ] If topic implies red flags / contraindications: are they present? If not → author question
- [ ] If topic implies ordered steps: is order explicit? If not → author question
- [ ] Any dosage/numeric clinical values: present in SoT only — never add

## Didactic oversimplification (content text only)

Still **questions / flags** — never invent the missing line.

- [ ] Absolute clinical rule in the lead without nearby scope/exception the body relies on
- [ ] Ordered clinical steps present as prose blob where order is safety-relevant (ask: make order explicit?)
- [ ] Contraindication / stop condition only in a footnote or late section while the lead reads “do X”

→ Author question or `should`/`block` if the **written text** can reasonably be misread into harm. Media layout is out of scope.

## Output

Review Report → **Safety flags** table: `flag | location | question for author`.  
Default severity: `should` (or `block` if clearly dangerous ambiguity **in the text as written** — still no invented fix).
