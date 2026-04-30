---
name: test-mocking-discipline
description: Testing rules for mocks, warnings, and suppression scope.
---

# Test Mocking Discipline

## Purpose
Keep tests realistic, maintainable, and warning-clean.

## When to load
- Any test authoring or test-fixing task.

## Non-negotiable rules
- Never mock React hooks (`useQuery`, `useSelector`, `useState`, etc.).
- Mock server/API calls instead.
- Prefer provider wrappers for Redux/Context.
- Do not silence console errors/warnings globally to force passing tests.
- Suppressions, when unavoidable, must be scoped to a specific test only.

## Workflow
1. Check existing test patterns.
2. Mock only true external boundaries.
3. Fix root causes for warnings (for example, `act()` issues).
4. Run relevant tests and ensure clean output.
