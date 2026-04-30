# Comments, Formatting, Objects, and Boundaries

## Comments

Good comments explain context that code cannot express cleanly: constraints, domain rules, non-obvious tradeoffs, external protocol behavior, or historical warnings that still matter.

Prefer improving names and structure over adding comments that restate the code.

Useful comments:

- Explain why an unusual approach is necessary.
- Document public APIs and contracts where consumers need help.
- Mark temporary compromises with owner, reason, and removal condition.
- Warn about dangerous assumptions or external system quirks.

Avoid comments that:

- Paraphrase obvious control flow.
- Excuse confusing code instead of improving it.
- Drift from implementation.
- Preserve dead code.

## Formatting

Formatting should support reading order. Follow the project formatter first. When no convention exists:

- Keep related statements close together.
- Put high-level orchestration before low-level details when it helps comprehension.
- Separate concepts with whitespace.
- Keep horizontal density low enough to scan.
- Make structure consistent across similar files.

## Objects and Data Structures

Use objects or modules to express behavior and protect invariants. Use data structures when the primary need is transparent data transfer.

Consider a class/module when:

- There is meaningful behavior around state.
- Invariants must be protected.
- Multiple operations belong to the same concept.
- Callers should not know representation details.

Consider simple data when:

- The value is a DTO, message, config, or serialized shape.
- Behavior lives elsewhere by design.
- Transparency matters more than encapsulation.

## Boundaries

At system boundaries, isolate external dependencies behind small adapters. Keep vendor APIs, transport details, and persistence quirks from leaking into core domain logic.

Boundary checklist:

- Convert external shapes into internal concepts early.
- Keep validation close to input boundaries.
- Wrap third-party APIs when they are volatile or awkward.
- Test adapters with focused contract tests.
- Keep business rules independent from framework lifecycle code where practical.
