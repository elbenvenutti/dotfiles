---
name: git-safety-guardrails
description: Guardrails for commits, pushes, and history-modifying commands.
---

# Git Safety Guardrails

## Purpose
Avoid unauthorized or risky git history operations.

## When to load
- Any task that could lead to `commit`, `push`, amend, reset, or other history writes.

## Non-negotiable rules
- Never run `git commit`, `git push`, or `git commit --amend` without explicit user approval.
- Phrases like "ready" or "tests pass" are not approval.
- Approval must be explicit (for example: "commit it", "push it", "yes, commit").
- Do not use destructive git commands unless explicitly requested.
- Before `git commit`, quality gates must be `pass` and not stale:
  - `Lint: pass`
  - `Typecheck: pass`
  - `Tests: pass`
- If any gate is `fail`, `not run`, or stale, do not commit.

## Workflow
1. Prepare changes and show status/diff context.
2. Wait for explicit approval before git write operations.
3. Run/verify quality gates and confirm they are fresh for the current diff.
4. Execute only the approved git action.

## Pre-commit freshness rule
- Gate results are stale if any relevant source file changed after the checks ran.
- If stale, rerun lint, typecheck, and tests before commit.
- In pre-commit output, explicitly list command statuses before running `git commit`.
