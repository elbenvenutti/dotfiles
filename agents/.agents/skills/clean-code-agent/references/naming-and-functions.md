# Naming and Functions

## Naming Heuristics

Use names that reveal intent, role, and level of abstraction.

Prefer names that answer:

- What is this thing?
- Why does it exist?
- What unit or domain does it belong to?
- Is it a command, query, value, collection, or policy?

Avoid:

- Single-letter names outside tiny scopes.
- Encoded type or scope prefixes unless the language or project convention requires them.
- Near-synonyms for the same concept, such as `account`, `customer`, and `client` when they mean one thing.
- Names that describe implementation instead of purpose.

Useful patterns:

- Boolean: `isEligible`, `hasPermission`, `canRetry`, `shouldArchive`.
- Command: imperative verb phrase, such as `sendInvoice`.
- Query: noun phrase or `get/find/list` when side effects are absent.
- Collection: plural noun or domain-specific aggregate.
- Policy/strategy: name the decision it owns, such as `RetryPolicy`.

## Function Heuristics

A function should usually operate at one clear level of abstraction and have one reason to change.

Prefer functions that:

- Are small enough to understand without scrolling.
- Do one coherent thing.
- Either answer a question or perform a command, not both.
- Make side effects obvious from the name.
- Hide incidental detail without hiding business meaning.

Warning signs:

- Long parameter lists.
- Boolean flags that choose different behavior paths.
- Mixed parsing, validation, persistence, and presentation in one block.
- Deep nesting that obscures the main path.
- Repeated groups of values that should be a concept.

## Arguments

Prefer fewer arguments. Introduce a value object or options object when several parameters travel together or represent a domain concept.

Use flag arguments cautiously. If `process(order, true)` and `process(order, false)` represent different operations, consider `processPriorityOrder` and `processStandardOrder`, or separate strategy/configuration objects.

## Practical Refactor Moves

- Rename vague variables before changing logic.
- Extract a function when a block has a describable purpose.
- Inline a function when its name adds no meaning.
- Replace nested conditionals with guard clauses when they clarify the normal path.
- Split command/query mixtures so callers know whether state changes.
