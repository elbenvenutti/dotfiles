---
name: file-rename-safety
description: Safe file renaming workflow that prevents broken imports.
---

# File Rename Safety

## Purpose
Rename files without breaking references.

## When to load
- Any task that renames files.

## Non-negotiable rules
- Find references before and after rename.
- Update every import/reference.
- Run verification gates after rename.

## Workflow
1. Find references to old path/name.
2. Rename the file.
3. Update all imports and references.
4. Verify with `npm run lint`.
5. Verify with `npx tsc --noEmit` (if TS project).
6. Verify with `npm test`.

## Failure handling
- Treat broken imports as not done.
- Continue until all references and checks are green.
