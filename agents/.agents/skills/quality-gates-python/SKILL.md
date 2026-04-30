---
name: quality-gates-python
description: Required Python formatting gate using Black before claiming completion.
---

# Python Quality Gate

## Purpose
Ensure Python formatting compliance before completion.

## When to load
- Python projects that use Black formatting.

## Non-negotiable rules
- Do not claim completion if Black check fails.

## Command checklist
1. `uv run black -l 120 . --check`
2. If failing: `uv run black -l 120 .`
3. Re-run: `uv run black -l 120 . --check`

## Output contract
- Report whether the final check passed.
