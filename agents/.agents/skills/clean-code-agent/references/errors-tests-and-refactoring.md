# Errors, Tests, and Refactoring

## Error Handling

Make failure paths explicit and understandable.

Prefer:

- Exceptions or result types that carry domain meaning.
- Early validation at boundaries.
- Specific error messages that help a caller act.
- One place to translate low-level failures into user-facing errors.
- Cleanup patterns that are safe even when failures happen.

Avoid:

- Returning `null`/`None` where callers cannot distinguish absence from failure.
- Swallowing errors without logging, metrics, or recovery.
- Catching overly broad exceptions too early.
- Mixing error formatting with core business logic.

## Tests

Tests should document behavior and enable safe change.

A useful test is:

- Fast enough to run frequently.
- Focused on one behavior.
- Clear in setup, action, and assertion.
- Named after the scenario or rule it protects.
- Independent from other tests.

Add tests for:

- Main behavior.
- Boundary values.
- Failure modes.
- Permission, validation, or policy decisions.
- Regression cases discovered during refactoring.

Prefer testing public behavior over private implementation details. Use mocks for external boundaries, not for every internal collaboration.

## Refactoring Sequence

When asked to clean up code, use this sequence:

1. Capture current behavior with tests or a clear behavioral summary.
2. Rename identifiers to expose intent.
3. Remove duplication and dead code.
4. Extract cohesive functions or modules.
5. Simplify conditionals and error paths.
6. Move responsibilities to better homes.
7. Re-run or describe the relevant tests.

Stop after the smallest change that materially improves clarity unless the user asks for a larger redesign.

## Review Severity Scale

Use this scale for review comments:

- **Critical**: likely bug, security issue, data loss, or behavior break.
- **High**: maintainability risk that will likely slow or mislead future work.
- **Medium**: clarity or design issue worth addressing soon.
- **Low**: style or local readability improvement.

## Response Templates

For a review:

```markdown
## Behavior summary
...

## Highest-impact issues
1. **High — issue name**: concise explanation and why it matters.

## Suggested changes
```language
...
```

## Tests
- ...
```

For a refactor:

```markdown
```language
<revised code>
```

Main changes:
- ...
```
