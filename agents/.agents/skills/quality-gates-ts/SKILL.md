---
name: quality-gates-ts
description: Required TypeScript quality gates before claiming completion.
---

# TypeScript Quality Gates

## Purpose
Prevent shipping broken TypeScript code.

## When to load
- Any TypeScript or JavaScript repo where lint/tests/typecheck apply.
- Load this skill at task start whenever the change touches `*.ts`, `*.tsx`, `*.js`, or `*.jsx`.

## Non-negotiable rules
- Do not claim work is done unless all gates pass.
- Lint must pass with 0 errors and 0 warnings.
- TypeScript compile must pass with 0 errors.
- Tests must pass.
- Do not skip lint or typecheck, even when running scoped tests.
- Before any completion message, verify all quality-gate commands were executed in the current session.
- Gate results must be fresh for the current diff.
- If code changes after checks run, rerun the full gate sequence.
- If command execution is blocked (for example, read-only/plan mode), explicitly mark the task as not complete and list pending commands.

## Command checklist
1. `npm run lint`
2. `npx tsc --noEmit`
3. `npm test` (or scoped test path when appropriate)

## Missing script fallback
- If `npm run lint` is unavailable, run the repository's documented equivalent lint command and state it explicitly.
- If `npx tsc --noEmit` is unavailable, run the repository's documented typecheck command and state it explicitly.
- If default test command is unsuitable, run the repository's documented test command (full or scoped as appropriate) and state it explicitly.

## Frontend tokenization gate (for UI changes)
- Applies when changed files include React UI (`*.tsx`) or styling classes.
- Tokenization must pass before claiming completion.

### Tokenization pass criteria
- No raw hex colors in class names (for example `bg-[#...]`, `text-[#...]`, `border-[#...]`).
- No arbitrary font-size classes (for example `text-[10px]`) when an existing semantic utility/token exists (for example `text-xxs`, `text-xs`, `text-sm`).
- Prefer semantic token classes/variables (for example `text-(--color-...)`, `bg-(--color-...)`, `border-(--color-...)`).
- Arbitrary values are allowed only when no equivalent token exists and design fidelity requires it; this must be reported explicitly.

## Failure handling
- If any command fails, fix root causes and rerun the full gate sequence.
- Never present completion while gates are failing.
- If any gate was not run, report work as pending quality gates.
- If any gate is stale, report work as pending quality gates and rerun.

## Output contract
- Report command outcomes and remaining failures, if any.
- Always include this validation block in final responses:
  - `Lint: pass|fail|not run`
  - `Typecheck: pass|fail|not run`
  - `Tests: pass|fail|not run`
  - `Tokenization: pass|partial|fail|not applicable`
  - `Status: complete|not complete`
