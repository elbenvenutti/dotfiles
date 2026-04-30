# Agent Skills Index

This index maps common engineering tasks to the available skills in `~/.agents/skills`.

## Skill Catalog

- `clean-code-agent`: Pragmatic clean-code review and refactoring heuristics for naming, decomposition, tests, and error handling.
- `conversation-bootstrap`: Required session startup protocol (rule acknowledgment, discovered rule files, commitment, notification readiness).
- `quality-gates-ts`: TypeScript completion gates (`npm run lint`, `npx tsc --noEmit`, `npm test`) with fix-and-rerun discipline.
- `quality-gates-python`: Python formatting gate using Black (`uv run black -l 120 . --check`).
- `file-rename-safety`: Safe rename workflow (find refs, rename, update imports, verify).
- `test-mocking-discipline`: Testing constraints (never mock hooks, mock server boundaries, avoid broad suppressions).
- `scope-and-change-discipline`: Scope control (do only requested work, preserve intent, avoid speculative extras).
- `git-safety-guardrails`: Git write safety (no commit/push/amend/history changes without explicit user approval).
- `pr-description-concise`: Concise PR writing focused on what changed and why, without CI-status noise.
- `frontend-style-conventions`: UI conventions (`cn()` for conditional classes, semantic variants, careful `'use client'`).
- `type-safety-and-runtime-guards`: Type-safety constraints (no cast bypasses, use narrowing guards, `globalThis`, real API IDs in mocks).
- `self-improvement-protocol`: Controlled rule evolution (ask before adding rules, only explicit-approved, specific additions).

## Quick Task-to-Skill Mapping

- Start of any conversation: `conversation-bootstrap`
- Code review or refactor quality pass: `clean-code-agent` (+ `scope-and-change-discipline` if scope-sensitive)
- TypeScript feature/fix completion: `quality-gates-ts`
- Python formatting/completion checks: `quality-gates-python`
- Renaming files/modules: `file-rename-safety` (+ `quality-gates-ts` in TS repos)
- Writing or fixing tests: `test-mocking-discipline`
- High-risk git actions or release flow: `git-safety-guardrails`
- Creating/updating PR descriptions: `pr-description-concise`
- React/UI component implementation: `frontend-style-conventions`
- Type narrowing / API data modeling / mock realism: `type-safety-and-runtime-guards`
- Turning repeated mistakes into durable rules: `self-improvement-protocol`

## Common Combinations

- Standard TypeScript coding task: `conversation-bootstrap` + `scope-and-change-discipline` + `quality-gates-ts`
- UI feature with tests: `frontend-style-conventions` + `test-mocking-discipline` + `quality-gates-ts`
- Refactor and rename: `clean-code-agent` + `file-rename-safety` + `quality-gates-ts`
- Pre-commit readiness: `scope-and-change-discipline` + `quality-gates-ts` + `git-safety-guardrails`
- PR finalization: `pr-description-concise` + `git-safety-guardrails`
