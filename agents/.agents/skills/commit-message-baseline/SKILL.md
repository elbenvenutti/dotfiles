---
name: commit-message-baseline
description: Portable commit message format baseline across repositories.
---

# Commit Message Baseline

## Purpose
Keep commit messages clear, consistent, and easy to scan across repositories.

## When to load
- Any task that may lead to `git commit`.

## Baseline rules
- Infer ticket ID from branch name when available (for example `one-544-...` -> `ONE-544`).
- Use subject format: `<type>: <TICKET-ID> <description>`.
- Allowed types: `fix`, `feat`, `docs`, `style`, `refactor`, `test`, `chore`.
- Keep subject line under 72 characters.
- Add a 1-3 line body focused on why and impact, not file-by-file actions.

## Scope boundary
- This skill covers message structure and commit summary quality only.
- Approval, git write safety, and quality gates are handled by:
  - `git-safety-guardrails`
  - `quality-gates-ts`

## Output contract
- Before commit, propose the final subject and body.
- After commit, report hash, subject, and included files.
