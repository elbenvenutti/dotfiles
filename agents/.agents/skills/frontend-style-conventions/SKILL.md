---
name: frontend-style-conventions
description: Frontend implementation conventions for class logic, client boundaries, and semantic props.
---

# Frontend Style Conventions

## Purpose
Enforce consistent frontend patterns and maintain readable component APIs.

## When to load
- React/UI implementation tasks.

## Non-negotiable rules
- Use `cn()` utility for conditional classes instead of manual if/else class logic.
- Add `'use client'` only when hooks or browser APIs are required.
- Prefer semantic visual props (`variant`) over boolean style props (`isSelected`).
- Prefer semantic token utilities over arbitrary Tailwind values:
  - Prefer `text-xxs|text-xs|text-sm|text-base|text-lg|text-xl` over `text-[...]` when equivalent exists.
  - Prefer `text-(--color-...)`, `bg-(--color-...)`, and `border-(--color-...)` over raw color literals.
- Do not introduce raw hex colors in class names.
- If an arbitrary value is kept for design fidelity, include a brief justification in the final response.
- When adding a new visual value used more than once, create/use a semantic CSS variable token instead of repeating arbitrary values.

## Workflow
1. Keep parent logic in parent components.
2. Pass visual intent to children via semantic variants.
3. Keep presentational components server-safe when possible.
