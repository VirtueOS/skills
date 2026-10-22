# Project installation

Install this fork as a pinned Git submodule. Each project owns its configuration and documents; the shared submodule owns the skills. Codex is the primary host. [Official OpenAI documentation](https://learn.chatgpt.com/docs/build-skills#where-codex-loads-local-skills) describes repository-local discovery and linked skill folders.

## New project installation

From the game repository root, using Command Prompt:

```bat
git submodule add https://github.com/VirtueOS/skills.git .agents/toolkit
call .agents\toolkit\scripts\setup-toolkit.bat .
```

The linked folders preserve the toolkit's bucket layout. Resolve an individual skill directory to its physical source before following parent-relative references, as its entry point instructs.

The batch file takes project root, toolkit root, and optional agent name as positional arguments. The roots default to the current directory and the toolkit script parent respectively. It copies `.gdignore`, `AGENTS.md`, `GLOSSARY.md`, and `README.md` from the toolkit root into `.agents/`, overwriting existing files. It then creates directory junctions from `.agents/skills/` to the toolkit's full `skills/` tree and `.agents/docs/` to its `docs/` tree. It never copies skill folders or fetches updates. Existing link destinations are reported as collisions. The script does not track ownership or prune old links, so remove obsolete junctions manually after checking their targets.

Commit `.gitmodules` and the `.agents/toolkit` gitlink in the game repository. The gitlink pins a revision; teammates receive the same toolkit after initializing submodules. Ensure the game's ignore rules permit that submodule, project instructions, and project-specific skills.

Keep `.agents/project/` for game-owned workflow/configuration, and link it from the game's `AGENTS.md`. Run `$setup-virtueos-skills` after linking if tracker/documentation configuration is needed. Existing project guides take precedence; setup must not write game configuration into the toolkit.

```text
game/
  AGENTS.md
  .agents/
    AGENTS.md                copied from toolkit on each setup run
    GLOSSARY.md              copied from toolkit on each setup run
    README.md                copied from toolkit on each setup run
    .gdignore                copied from toolkit on each setup run
    toolkit/                 pinned submodule, this repository
    skills/                  junction to toolkit skills/
    docs/                    junction to toolkit docs/

```

## Ignore generated links, preserve project skills

The skills and docs junctions point to local paths. Add ignore entries for `.agents/skills/` and `.agents/docs/`, and `.claude/skills/` when using the optional Claude target. The four copied toolkit files can be committed when the project should share them, but setup overwrites them from the pinned toolkit revision every time. Keep project-specific guidance in the game root `AGENTS.md` or `.agents/project/`, and project terminology in its own authoritative location. The whole skill tree is linked, so project-specific skills cannot be placed inside `.agents/skills/`; move them to a project-owned location. Do not blanket-ignore `.agents/*`: it would also hide the submodule and game-owned configuration.

The script does not edit ignore rules or Git state. It refreshes the four copied toolkit files and reports collisions rather than replacing existing link destinations. After a checkout move or toolkit update, remove old junctions after checking their targets, then rerun setup.

## Teammate checkout and updates

```bat
git clone --recurse-submodules <game-repository-url>
# Or, from an existing game checkout:
git submodule update --init --recursive
call .agents\toolkit\scripts\setup-toolkit.bat .
```

To adopt a reviewed toolkit revision:

```bat
git -C .agents/toolkit fetch origin
git -C .agents/toolkit checkout <reviewed-commit-or-tag>
call .agents\toolkit\scripts\setup-toolkit.bat .
git add .agents/toolkit
```

Review and commit the changed gitlink in the game repository through its normal workflow. Teammates run `git submodule update --init --recursive` and rerun setup. The setup script does not prune obsolete junctions, so remove those after checking their targets. It never updates the pin automatically. Make shared skill changes in this fork; keep per-game overrides in project instructions rather than a dirty submodule.

## Optional skills and hosts

The full skills tree is linked, including engineering, productivity, and in-progress buckets. User-invoked skills remain explicit-only according to their metadata.

Pass `Claude` as the third argument to create a `.claude/skills/` junction to the full skills tree. This only provides files in Claude's skill location; it does not configure Claude or create competing instruction files. Do not install an upstream plugin alongside this fork with the same skill names.

## Godot and migration

Keep the toolkit and generated links out of game imports and exports. [Godot's project-organization documentation](https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html#ignoring-specific-folders) explains `.gdignore`: an empty file excludes a folder from importing and resource loading. The setup script copies the toolkit `.gdignore` into `.agents/`, so keep runtime game resources outside that folder. Review export presets and inspect the exported package for tooling, tests, and private documentation. Import exclusion alone is not evidence that a custom export packaging step excludes everything.

For an existing ignored copy, first inventory the old collection and preserve game-owned instructions, local skill edits, and terminology documents. Move only the old toolkit out of the destination after reviewing that inventory. Add the submodule, move any existing `.agents/skills/` and `.agents/docs/` directories aside after reviewing their contents, run setup, repair game pointers, and verify discovery before removing the backup. Do not replace an entire `.agents/` directory containing `.agents/project/`. This procedure is documented here; no existing game is migrated by this toolkit change.

## Verify

Check that `.agents/skills/engineering/implement/SKILL.md` resolves to the pinned toolkit, then use the host's skill selector or invoke `$implement` in a new project session. Codex may require restarting if new skills do not appear. Reading a linked file verifies the filesystem, not the running app's discovery. The repository's automated setup checks run with:

```bat
call tests\test-setup-toolkit.bat
```
