---
name: scope-and-change-discipline
description: Enforce requested scope and preserve original implementation intent.
---

# Scope and Change Discipline

## Purpose
Prevent unrequested changes and accidental behavior regressions.

## When to load
- Any implementation/refactor/change request.

## Non-negotiable rules
- Do only what the user asked.
- Ask before doing extras (docs, features, refactors outside scope).
- Read and understand existing code before modifying it.
- Preserve intentional patterns unless explicitly asked to change them.

## Workflow
1. Identify explicit requested outcome.
2. Inspect current implementation and infer intent.
3. Apply minimal safe changes aligned with existing patterns.
4. Call out tradeoffs only when they impact requested outcome.
