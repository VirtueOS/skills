# Project context and paths

Read this before a skill explores or writes in a project. The toolkit may be a submodule or linked through an agent's skill directory.

## Establish the roots

- **Project root**: the game or repository the user is working on, or the active implementation worktree. Start from the user's task location and its instructions. Read its `AGENTS.md`/`CLAUDE.md` and task-relevant documentation index.
- **Toolkit root**: this skill collection. Resolve a discovered skill directory link to its physical source before following parent-relative references. In PowerShell 7, get the directory with `Get-Item`, then use `($entry.ResolveLinkTarget($true) ?? $entry).FullName`; Python's `Path.resolve()` also resolves directory links. Relative links in this collection use the physical bucket directory, not the flattened `.agents/skills/<name>/` path. These references are not output locations.
- When a skill lives in a submodule, its nearest Git root is the toolkit, not the game. Resolve game Git commands, code, specs, research, and documentation against the project/worktree. When the task is to modify the toolkit itself, the toolkit is the project.

Confirm an ambiguous project location before writing. Never store game-specific configuration in the shared toolkit submodule.

## Follow the project's authorities

Use project instructions to locate gameplay terminology, architecture, coding/authoring rules, testing commands, tracker configuration, and ADRs. Load the relevant documents through their index rather than loading every page. Existing paths and ownership rules take precedence over defaults in these skills. Distinguish current behavior, agreed targets, and unresolved proposals.

Game terms may live in mechanic pages, not a root glossary. Reuse those definitions and update their owning pages when terms are resolved. Read `GLOSSARY.md` or `GLOSSARY-MAP.md` when that is the project's convention. Create a glossary lazily only if there is no existing terminology authority and a term needs recording. Use the project's ADR location; default to `docs/adr/` only if none is established.

Find the configured tracker and label mapping through project instructions. Existing `docs/agents/` guides remain valid. Tracker-dependent skills should request setup only when their task actually needs missing tracker operations; a local plan or supplied spec does not require a remote tracker.

## Godot and proportionality

For engine work, read [GODOT.md](GODOT.md). Make the smallest coherent change satisfying the task. New layers, frameworks, scenes, services, autoloads, or adapters need a concrete requirement or demonstrated maintenance benefit. Existing project conventions decide ownership and terminology. Keep toolkit customization in this fork and game-specific overrides in the game.

Invoke referenced skills using the host's available mechanism. If there is no Skill tool, read their `SKILL.md` files and relevant references directly. Preserve explicit-only invocation policies: a router recommends user-invoked skills rather than starting them on the user's behalf.
