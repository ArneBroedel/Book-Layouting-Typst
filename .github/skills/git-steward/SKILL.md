---
name: git-steward
description: "Enforce this repo's strict Git/GitHub safety policy. ALWAYS use this skill before any git or gh operation that changes repository state — committing, branching, switching, merging, rebasing, resetting, cleaning, pushing, force-pushing, or opening/managing PRs. Use it whenever the user asks to 'commit', 'push', 'make a branch', 'open a PR', 'undo', 'discard changes', or 'sync with remote'. It defines what is allowed automatically, what needs explicit user approval, and the safe PR-based workflow."
---

# Git Steward

This repo follows a **strict, conservative Git policy**. The cost of an accidental branch switch,
a commit on `master`, or a `reset --hard` is high; the cost of pausing to ask is low. When in doubt,
do the read-only thing and ask.

## When to use

- Before **any** state-changing git/gh command (commit, branch, switch, merge, rebase, reset, clean,
  push, force-push, tag, stash drop).
- When the user says "commit", "push", "branch", "open a PR", "undo", "discard", "sync".
- When deciding *whether* an action needs explicit approval.

---

## Hard rules (never violate without explicit, in-context user approval)

1. **Never commit on `master`/`main`.** If `git branch --show-current` is the default branch, stop and
   create a feature branch first — but only after the user has asked for a commit (see rule 3).
2. **Never create or switch branches without an explicit request.** No `git checkout -b`, `git switch`,
   `git checkout <branch>` unless the user asked for that branch operation in this conversation.
3. **Never commit or push unless the user asked.** Making changes ≠ committing them. Leave the working
   tree dirty for the user to review unless they said "commit"/"push".
4. **Never run history- or work-destroying commands without approval:**
   `git reset --hard`, `git clean -fd`, `git checkout -- <path>` (discarding changes),
   `git push --force` / `--force-with-lease`, `git branch -D`, `git stash drop/clear`, `git rebase`
   on shared branches. These can erase uncommitted or pushed work.
5. **Never force-push** to a shared/remote branch without explicit approval.
6. **Interactive flags are unavailable** in this environment (`git rebase -i`, `git add -i`) — do not
   attempt them.

---

## Allowed without asking (read-only / inspection)

`git status`, `git diff`, `git log`, `git show`, `git branch --show-current`, `git ls-files`,
`git blame`, `gh pr view`, `gh pr list`, `gh api` (GET). Inspect freely before proposing any change.

---

## Preferred workflow — PR flow

1. Confirm the user wants to commit/ship.
2. If on `master`/`main`, create a feature branch **after** that confirmation.
3. Stage deliberately (`git add <paths>`, not blind `git add -A` unless the diff is fully understood).
4. Commit with a clear message. End commit messages with the required trailer:
   ```
   Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>
   ```
5. Push the branch and open a PR via `gh` when asked. End PR bodies with:
   ```
   🤖 Generated with [Claude Code](https://claude.com/claude-code)
   ```
6. Do not merge PRs unless explicitly asked.

---

## Before destructive or outward-facing actions

- **Deleting/overwriting tracked files:** look at the target first. If it contradicts how it was
  described, or you did not create it, surface that instead of proceeding.
- **Pushing/PRs publish content externally** — confirm first unless durably authorized in this
  conversation. Approval for one push does not extend to the next.
- **Reversibility check:** if the action is hard to reverse (force-push, hard reset, branch delete),
  state what will be lost and get a yes before running it.

---

## Background

This skill encodes the Git policy summarized in `CLAUDE.md` (§Skills). It is the operational form of
the repo's "confirm before hard-to-reverse or outward-facing actions" principle.
