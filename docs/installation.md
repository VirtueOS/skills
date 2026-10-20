# Project installation

Install this fork as a pinned Git submodule. Each project owns its configuration and documents; the shared submodule owns the skills. Codex is the primary host. [Official OpenAI documentation](https://learn.chatgpt.com/docs/build-skills#where-codex-loads-local-skills) describes repository-local discovery and linked skill folders.

## New project installation

From the game repository root, using Command Prompt:

```bat
git submodule add https://github.com/VirtueOS/skills.git .agents/toolkit
call .agents\toolkit\scripts\link-skills.bat .
```

Agents must resolve each discovered directory link to its physical source before reading parent-relative skill references. The skill entry points state this explicitly: the installed flat layout differs from the toolkit's bucket layout.

The batch file takes project root, toolkit root, agent name, and optional `include-in-progress` as positional arguments. The roots default to the current directory and the toolkit script parent respectively. It creates Windows directory junctions and never copies skills or fetches updates. Existing destinations are reported as collisions. The batch linker does not track ownership or prune old links, so remove obsolete junctions manually after checking their targets.

Commit `.gitmodules` and the `.agents/toolkit` gitlink in the game repository. The gitlink pins a revision; teammates receive the same toolkit after initializing submodules. Ensure the game's ignore rules permit that submodule, project instructions, and project-specific skills.

Keep `.agents/project/` for game-owned workflow/configuration, and link it from the game's `AGENTS.md`. Run `$setup-virtueos-skills` after linking if tracker/documentation configuration is needed. Existing project guides take precedence; setup must not write game configuration into the toolkit.

```text
game/
  AGENTS.md
  .agents/
    project/                 game-owned instructions and configuration
    toolkit/                 pinned submodule, this repository
    skills/<skill-name>/     generated local links to toolkit skills
    (no generated ownership record)
```

## Ignore generated links, preserve project skills

Generated links contain local machine paths and must not be committed. Add ignore entries for the generated skill destinations. If the project has no custom skills, ignoring `.agents/skills/` is sufficient. If it has custom skills, ignore only toolkit-owned names, or use explicit exceptions for the custom folders. Do not blanket-ignore `.agents/*`: it would also hide the submodule and game-owned configuration.

The script does not edit ignore rules, project instructions, or Git state. It reports collisions rather than replacing existing destinations. After a checkout move or toolkit update, remove old junctions after checking their targets, then rerun setup.

## Teammate checkout and updates

```bat
git clone --recurse-submodules <game-repository-url>
# Or, from an existing game checkout:
git submodule update --init --recursive
call .agents\toolkit\scripts\link-skills.bat .
```

To adopt a reviewed toolkit revision:

```bat
git -C .agents/toolkit fetch origin
git -C .agents/toolkit checkout <reviewed-commit-or-tag>
call .agents\toolkit\scripts\link-skills.bat .
git add .agents/toolkit
```

Review and commit the changed gitlink in the game repository through its normal workflow. Teammates run `git submodule update --init --recursive` and rerun linking. Setup prunes only its own obsolete links, which handles skill removals and renames. It never updates the pin automatically. Make shared skill changes in this fork; keep per-game overrides in project instructions rather than a dirty submodule.

## Optional skills and hosts

Promoted engineering and productivity skills are linked by default. Pass `include-in-progress` as the fourth argument to opt into the beta bucket. Existing links are left in place, so remove beta junctions manually when opting out. User-invoked skills remain explicit-only according to their metadata.

Pass `Claude` as the third argument to generate project-local `.claude/skills/` links later. This only provides files in Claude's skill location; it does not configure Claude or create competing instruction files. Do not install an upstream plugin alongside this fork with the same skill names.

## Godot and migration

Keep the toolkit and generated links out of game imports and exports. [Godot's project-organization documentation](https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html#ignoring-specific-folders) explains `.gdignore`: an empty file excludes a folder from importing and resource loading. Put `.agents/.gdignore` in the game repository if that directory contains agent material only; do not exclude game resources that need runtime loading. Review export presets and inspect the exported package for tooling, tests, and private documentation. Import exclusion alone is not evidence that a custom export packaging step excludes everything.

For an existing ignored copy, first inventory the old collection and preserve game-owned instructions, local skill edits, and terminology documents. Move only the old toolkit out of the destination after reviewing that inventory. Add the submodule, link the skills, repair game pointers, and verify discovery before removing the backup. Do not replace an entire `.agents/` directory containing `.agents/project/`. This procedure is documented here; no existing game is migrated by this toolkit change.

## Verify

Check that `.agents/skills/implement/SKILL.md` resolves to the pinned toolkit, then use the host's skill selector or invoke `$implement` in a new project session. Codex may require restarting if new skills do not appear. Reading a linked file verifies the filesystem, not the running app's discovery. The repository's automated linker checks run with:

```bat
call tests\test-link-skills.bat
```
