---
name: setup-virtueos-skills
description: Configure a project for the VirtueOS engineering skills, reusing its tracker, documentation, and Godot validation conventions. Run once before tracker-dependent flows or when project configuration changes.
disable-model-invocation: true
---

Resolve this skill directory to its physical source if loaded through a discovery link; parent-relative references below use the toolkit bucket layout, not the flat discovery layout.

# Setup VirtueOS Skills

Read [project context](../../PROJECT-CONTEXT.md) before choosing a root or output paths. This configures the consuming project, not the toolkit submodule. Linking the installed skills is a separate step documented in the toolkit README.

## Explore first

Read project instructions, documentation indexes, existing tracker/label guides, terminology pages and ADRs. For Godot, find `project.godot`, documented engine commands, test scripts/framework, authoring conventions, and target platforms. Record current versus planned structure. Inspect actual contexts rather than assuming a JavaScript monorepo layout.

Reuse existing paths and setup. Keep all game-specific files outside `.agents/toolkit/`. Do not create a second glossary when mechanic pages already own terminology.

## Settle missing decisions

Ask one question at a time, with a recommendation, and wait for the answer. Do not re-ask decisions already established.

1. **Tracker**: reuse the configured tracker. If none exists, recommend the host matching the project's remote, or local Markdown for a project without a remote. Other trackers are supported through a prose operation guide. Use the [GitHub](issue-tracker-github.md), [GitLab](issue-tracker-gitlab.md), or [local](issue-tracker-local.md) templates as seeds, not fixed output paths.
2. **Labels**: only when triage is installed, reuse the mapping or recommend the [canonical labels](triage-labels.md). Collect overrides if the project uses different names.
3. **Domain docs**: retain the existing terminology and ADR layout. Only propose a new layout if guidance is missing and a term or decision needs a home. Multiple contexts do not require JavaScript workspace files.

## Draft and write

Show the project configuration and instruction-file pointer before writing, using any already-established authorization. Preserve surrounding instructions and update an existing block in place. Prefer the project's active `AGENTS.md` for Codex; retain existing `CLAUDE.md` routing and avoid duplicate conflicting authorities.

Write the tracker operations, label mapping if needed, and [domain consumer guide](domain.md) to the discovered paths. The domain guide should name the project's actual authoritative pages, not duplicate their content. Record engine/check locations as pointers to their owning project guides. If no documentation exists, record verified commands with their limitations rather than inventing tooling.

For a configured remote tracker, create missing labels using its documented operations when that setup is authorized. PRs as a triage request surface remain off unless the user asks for them.

Report what changed and which flows consume it. Project owners can edit configuration in place later. Do not alter the toolkit's Git state, install global skills, or update the submodule revision as a side effect of setup.
