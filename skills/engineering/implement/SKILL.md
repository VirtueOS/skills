---
name: implement
description: Implement a piece of work based on a spec or set of tickets.
disable-model-invocation: true
---

Resolve this skill directory to its physical source if loaded through a discovery link; parent-relative references below use the toolkit bucket layout, not the flat discovery layout.

Read [project context](../../PROJECT_CONTEXT.md) before selecting roots, guidance, and output paths. Implement the user's supplied spec, plan, or tickets. Before editing, capture the starting commit and worktree status so review can identify task changes and preserve existing user work.

If a ticket reference is passed, fetch it through the configured tracker and state its title. Ask if the reference is ambiguous. A local supplied plan is sufficient; remote tracker setup is not required for it.

Use `tdd` where suitable, at the meaningful boundaries agreed during planning. Reuse that agreement and revisit it only when scope materially changes. Apply [Godot feedback guidance](../../GODOT.md) for engine work: use existing commands and test tools, preserve authored references, and require playable evidence for gameplay changes. Keep the implementation proportional to the task.

Run focused checks while working, then the relevant broader checks at the end. Use project-documented parser/import, runtime, and export checks when affected; documentation-only changes need document checks. Report baseline failures separately from regressions and mark unavailable playtest/target-platform evidence as pending.

Once done, run `code-review` against the starting commit, including current working-tree changes and new files, using the supplied plan/spec as the spec source. Fix actionable findings.

Commit your work to the current branch. Include only task-related changes; preserve unrelated user edits. Report the checks and any remaining limitations.
