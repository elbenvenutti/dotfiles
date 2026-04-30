---
name: type-safety-and-runtime-guards
description: Type discipline using guards instead of casts, plus data realism constraints.
---

# Type Safety and Runtime Guards

## Purpose
Improve correctness and clarity in typed code and test/demo data.

## When to load
- TypeScript typing fixes, data modeling, and mock/demo data tasks.

## Non-negotiable rules
- Do not use `as` type casts to bypass type errors.
- Use type guards (`in`, `typeof`, `instanceof`) and proper narrowing.
- Use `globalThis` instead of `global`.
- Demo/mock IDs must match real API identifiers.

## Workflow
1. Identify the true runtime shape.
2. Add or refine narrowing logic.
3. Align mock/demo objects with real API contracts.
