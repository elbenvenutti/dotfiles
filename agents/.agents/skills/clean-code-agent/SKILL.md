---
name: clean-code-agent
description: apply pragmatic clean-code review, refactoring, and code-improvement heuristics inspired by widely known clean code principles. use this skill when reviewing code, naming functions, decomposing modules, improving tests, handling errors, reducing duplication, or turning messy implementation into clearer, maintainable code. this skill does not quote or reproduce any copyrighted book text; it provides an original operational checklist and workflow.
---

# Clean Code Agent

## Purpose

Use this skill to review, explain, or refactor code toward clarity, small units, meaningful names, low duplication, strong tests, and simple error handling. Treat the guidance as practical heuristics, not rigid law.

## Default Workflow

1. **Clarify intent from context**: identify what the code is supposed to do, key inputs/outputs, and current pain points.
2. **Read before changing**: summarize behavior in one or two sentences before suggesting edits.
3. **Prioritize safety**: preserve externally visible behavior unless the user explicitly asks for redesign.
4. **Review in layers**: names, functions, structure, comments, errors, tests, then architecture.
5. **Suggest the smallest useful change first**: prefer incremental refactors over sweeping rewrites.
6. **Show examples**: when possible, provide a before/after snippet or a focused patch.
7. **Flag tradeoffs**: mention performance, compatibility, or framework constraints when they affect a recommendation.

## Review Checklist

Consult these reference files only as needed:

- `references/naming-and-functions.md` for names, function size, arguments, and responsibility boundaries.
- `references/comments-formatting-and-objects.md` for comments, layout, data structures, classes, and boundaries.
- `references/errors-tests-and-refactoring.md` for error handling, tests, refactoring sequence, and review output format.

## Output Format

For code review requests, structure the answer as:

1. **Behavior summary**: what the code appears to do.
2. **Highest-impact issues**: no more than five, ordered by value.
3. **Suggested changes**: concrete edits, preferably with code.
4. **Tests to add or update**: focus on behavior and edge cases.
5. **Optional follow-up**: one next refactor if relevant.

For direct refactoring requests, provide the revised code first, then briefly explain the main changes.

## Guardrails

- Do not claim a rule is universal. Treat all rules as contextual heuristics.
- Do not refactor into abstraction for its own sake. Introduce abstraction only when it removes duplication, clarifies intent, or isolates change.
- Do not hide business rules behind vague helper names.
- Do not rewrite code solely to match personal style when the existing project has clear conventions.
- Avoid long lectures. Give actionable observations tied to the specific code.
