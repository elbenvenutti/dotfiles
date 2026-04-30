---
name: conversation-bootstrap
description: Mandatory start-of-conversation protocol for rule loading and notification readiness.
---

# Conversation Bootstrap

## Purpose
Run the required startup ritual before any substantive work.

## When to load
- At the start of every new conversation.

## Non-negotiable rules
- State exactly: I have read the workspace rules in `.cursor/rules/`
- List discovered `.mdc` rule files.
- Confirm exactly: I will follow these rules throughout this conversation.
- Ensure macOS notifications are available through `terminal-notifier`.
- If `terminal-notifier` is missing, tell the user to run: `brew install terminal-notifier`.

## Workflow
1. Check for project-specific `.cursor/rules/*.mdc` and read all that exist.
2. Verify `terminal-notifier` installation.
3. Post startup confirmation messages before proceeding.

## Output contract
- Confirm completion of all four startup requirements before doing task work.
