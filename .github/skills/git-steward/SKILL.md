---
name: git-steward
description: A strict workflow for Git + GitHub that minimizes accidental branching, wrong PR bases, and messy merges.
---

# Git Steward Skill

## Core policy

1. Never create or switch branches unless explicitly requested.
2. Never work directly on `master`/`main`.
3. Base branch comes from `.git-steward.yml` or `origin/HEAD`.
4. Prefer PR workflow:
   - `gh pr create --base <base> --fill`
   - `gh pr merge --delete-branch [--squash|--merge|--rebase]`
5. Never run `git reset --hard`, `git clean -fd`, or force-push unless explicitly approved.

## Staging-first workflow

1. Canonical flow: feature branch → `staging/standard` → `main`.
2. `staging/*` is allowed only for parallel large features; must be merged back into `staging/standard` before any PR to `main`.
3. If `staging/standard` does not exist on origin, stop and ask the user to create it first.

## Starting work (safe branch setup)

```bash
git branch --show-current
git status --short
npm run git:safety:setup
npm run git:safe-start -- -TaskName "<task name>"
git push -u origin "<new-branch>"
```

Confirm output includes `Current branch: agent/...` and `Safety branch: safety/pre-...`.

If the working tree is dirty, stop and report exactly which files are modified.

## PR merge flow

**Preflight:**

```bash
git branch --show-current   # must not be master/main
git status --short          # must be clean
git fetch origin
git merge --ff-only origin/master
```

If fast-forward fails, report conflict options — do not rebase.

**Review and push:**

```bash
git diff --name-status origin/master...HEAD
git push -u origin <branch>
```

**Open PR:**

```bash
git config branch.$(git branch --show-current).gh-merge-base <base>
gh pr create --base <base> --fill
```

Set PR base explicitly for determinism (in addition to git config).

**Merge policy:** Prefer GitHub UI merge with branch protection checks. Never force-push protected branches.

## Base branch mechanics (gh)

`gh pr create` resolves base in order:

1. `--base` flag (always pass this explicitly)
2. `branch.<current>.gh-merge-base` git config
3. Repository default branch

```bash
# Detect origin default branch
git symbolic-ref --short refs/remotes/origin/HEAD | sed 's|^origin/||'

# Set PR base for current branch
git config branch.$(git branch --show-current).gh-merge-base <base>
```

## Recovery (reflog first)

When work appears missing after reset/rebase/branch movement:

```bash
git log --oneline -n 10
git reflog --date=iso -n 80
```

Identify candidate SHAs, then create a non-destructive recovery branch:

```bash
git branch recovery/<date>-<label> <commit-sha>
git show --name-status --oneline <commit-sha>
```

Present options to user: cherry-pick, merge recovery branch, or switch. Do not restore without confirmation.

**Forbidden without explicit approval:** `git reset --hard`, `git push --force`, `git checkout -- <path>`

## Safety audit checklist

```bash
git config --show-origin --get core.hooksPath   # must point to .githooks
git config --get gc.reflogExpire                 # recommend 180.days
git config --get gc.reflogExpireUnreachable      # recommend 60.days
git branch --show-current
git status --short
```

Verify `.githooks/pre-push` exists and blocks: direct push to `master`/`main`, non-fast-forward pushes to protected branches, protected branch deletion.

**GitHub branch protection checklist (manual):**

- Require PR before merge
- Require status checks
- Disallow force pushes
- Restrict direct pushes
