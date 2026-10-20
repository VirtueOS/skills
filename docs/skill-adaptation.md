# Godot skill adaptation

This is the accepted adaptation plan and work breakdown. The user subsequently invoked `implement` to authorize implementation in this toolkit repository. Installing or migrating a game repository and publishing tracker issues remain outside this change.

## Confirmed choices

- Maintain a personal Godot-first fork. Review and selectively adopt upstream changes.
- Target GDScript, 2D and 3D games, and Windows and Web exports.
- Prioritize Codex while keeping future Claude support possible.
- Install this repository as a Git submodule at `.agents/toolkit/` in each game project so the team shares a pinned toolkit revision. A local setup command links individual skills into `.agents/skills/`. Keep project-specific guidance under `.agents/project/`, outside the submodule. The current ignored copy is intentionally excluded while the skills are not production-ready.
- Follow each project's instructions and documentation. Discover paths, engine versions, commands, and terminology there; use defaults only where guidance is absent. Do not require a new glossary when the project already has authoritative terminology documents.
- Favor the smallest sufficient implementation. Add abstractions only for a concrete requirement, demonstrated complexity, or duplication with a clear maintenance benefit.
- Keep useful automated correctness checks and require playable evidence for gameplay changes.
- Agree meaningful testing boundaries once during planning. Proceed within that agreement and revisit it when scope materially changes. Use existing project tools rather than introducing a mandatory framework.
- Default to Godot-native prototypes for gameplay, scenes, and in-game UI. Keep HTML available for standalone diagrams and logic explorations where engine behavior does not matter.
- Adapt existing workflows and their supporting docs while preserving skill names, except rename `setup-matt-pocock-skills` to `setup-virtueos-skills`. The user's spelling referred to this existing setup skill. Remove `setup-ts-deep-modules`. Prioritize project-document discovery, Godot prototypes, debugging, validation, proportionate architecture, and installation cleanup. Keep useful general skills and replace mandatory Bash assumptions with environment-appropriate commands.
- Change the shared `grilling` skill to ask exactly one decision question at a time and wait for the answer. Apply this to all wrappers and consumers, including `grill-me`, `grill-with-docs`, triage, wayfinding, and architecture interviews. Keep recommendations and prerequisite-aware sequencing; do not hide multiple independent questions inside one numbered question.
- Preserve existing Git workflow behavior, including `implement` committing its work to the current branch. Do not introduce a blanket explicit-request gate for commits, pushes, and PRs. Other actions retain their existing skill-specific conditions.

## Representative project

The user supplied `W:/Projects/Godot/blackout_protocol` as an example, not as a layout to hardcode into shared skills.

Its root `AGENTS.md` routes agents through `.agents/project/workflow.md` and `docs/index.md`. Its documentation owns testing commands, terminology, coding standards, and scene/resource authoring rules. `project.godot` declares Godot 4.7 with Forward Plus; that declaration does not establish the installed executable's exact version or a minimum version for the shared toolkit.

Tests use standalone GDScript scripts, generally extending `SceneTree`, with PowerShell commands documented by the project. No new test framework is implied. Architecture documentation distinguishes current structure from a proposed target structure.

## Original cleanup findings

These findings were recorded before implementation. Their toolkit-side fixes are included in the implemented work below; migration of the representative game remains separate.

- `docs/agents/triage-labels.md` still points to deleted `SCOPE.md`.
- `docs/writing-docs.md` points to deleted `install-block.md` and retains upstream publishing assumptions.
- `README.md` still installs upstream rather than this fork; the fork's plugin manifests were removed.
- `docs/engineering/ask-matt.md` still treats the removed plugin manifest as authoritative.
- The uncommitted replacement of the `AGENTS.md` symlink with a regular file needs its tracked file mode checked when staged.
- `.changeset/` remains after removal of its release tooling.

The removed npm dependencies and release scripts are not required to execute the retained skills. No retained operative references to the four removed miscellaneous skills were found.

## Scope of the later implementation

Update this toolkit, its supporting references, navigation, human-facing docs, and installation tooling. Use `blackout_protocol` as read-only evidence of project conventions, not as a template to impose on every game.

Do not migrate `blackout_protocol`, create a submodule there, replace its ignored copy, edit its gameplay code, introduce a test framework, or restore upstream publishing infrastructure as part of this work. Document a separate migration procedure for a project owner to apply later.

## Proposed specs

| Spec | Outcome | Candidate tickets |
| --- | --- | --- |
| S1: Personal workflow and project authority | Sequential interviews, renamed setup, project-owned paths and terminology, proportionate design | T1, T2, T3, T4 |
| S2: Godot development feedback | Engine-native prototypes, meaningful automated checks, playable evidence, engine-aware debugging | T5, T6 |
| S3: Team installation | Pinned submodule plus repeatable local discovery links | T7 |
| S4: Fork consistency and acceptance | Removed TypeScript specialization, repaired references, fork-owned docs, verified final behavior | T8, T9 |

These are planning groups, not published specs or tracker issues. Later specs should state observable behavior and reference this document rather than copy its entire contents into every ticket.

## Candidate tickets

### T1: Make grilling sequential

Dependencies: none.

Update `skills/productivity/grilling/SKILL.md` and its human-facing page. Audit wrappers, consumers, and `ask-matt` for instructions or examples that still require asking a whole frontier in one round. Preserve agent-owned fact finding and recomputing the next decision after each answer.

Acceptance: an interview presents one decision question with a recommendation, waits for an answer, and then chooses the next question. Multiple independent decisions are never bundled into one prompt or a multi-item question tool call. The current batch-round default and its opt-out documentation are replaced consistently. The behavior applies through `grill-with-docs` and other consumers, not just direct invocation.

### T2: Rename the setup skill

Dependencies: none.

Rename `skills/engineering/setup-matt-pocock-skills/` to `setup-virtueos-skills/`. Update frontmatter, `agents/openai.yaml` metadata where applicable, active invocation references, setup prerequisites, README entries, bucket navigation, docs, and `ask-matt`. Preserve the existing setup capabilities while subsequent tickets adapt project discovery and installation guidance.

Acceptance: the new name is the only active setup command. Historical changelog entries remain historical; they are not blindly rewritten. Move the current docs page to the new name and follow the repository's archival convention for the old page where applicable. All active references resolve.

### T3: Discover project guidance and resolve paths in the right repository

Dependencies: T2.

Adapt setup, domain-modeling, and their consumers to follow project instructions and task-relevant documentation indexes. Inspect spec, ticket, research, implementation, review, retro, and domain-documentation flows for fixed paths and unconditional glossary assumptions. Keep shared rules concise and avoid adding a new routing skill unless a demonstrated need remains.

Distinguish three roots: the game repository, the toolkit submodule, and an implementation worktree. Skill-local references resolve inside the toolkit; game code, task outputs, tracker configuration, and game docs resolve in the intended project/worktree. Never infer the game root from the nearest Git root when the running skill is inside a submodule.

Acceptance: existing terminology documents can remain authoritative without creating a duplicate glossary. Existing docs paths and current-versus-planned architecture labels are respected. A project with a different layout works without editing shared skills. Setup writes project configuration outside `.agents/toolkit/`. Missing guidance receives minimal defaults; no Godot executable path, engine version, or `blackout_protocol` directory is hardcoded.

### T4: Make design advice proportional to indie development

Dependencies: T3.

Review `codebase-design`, `improve-codebase-architecture`, spec/ticket guidance, and review criteria. Prefer the smallest coherent change satisfying the task. Remove universal prescriptions that conflict with project conventions, including vocabulary restrictions that would reject legitimate scene/component terminology. Keep useful interface and dependency reasoning.

Acceptance: a small feature does not automatically trigger new layers, frameworks, services, scenes, or autoloads. Proposed abstractions identify an existing source of complexity, duplication, or a concrete requirement and explain their maintenance benefit. Architecture advice follows the project's agreed ownership model. Existing Git workflow behavior remains intact.

### T5: Adapt implementation, TDD, and diagnosis to Godot evidence

Dependencies: T1, T3, T4.

Update `implement`, `implement-spec`, `tdd`, `diagnosing-bugs`, and relevant references. Agree meaningful testing boundaries during planning, reuse that agreement, and revisit it when scope changes. Discover the project's existing checks and shell commands. Cover script/engine validation, scene/resource changes, runtime behavior, and relevant Windows/Web checks without requiring every check for every task.

Preserve reproducibility, falsifiable hypotheses, independent expected values, and measured performance evidence. Replace HTTP/browser-first assumptions and mandatory Bash reproduction templates with task-appropriate feedback. Preserve scene references, resource identities, inheritance overrides, and other authoring invariants identified by project guidance.

Acceptance: pure gameplay logic can use test-first checks through existing tools; visual, timing, physics, and feel changes receive appropriate runtime/playtest evidence. Human-observed evidence is clearly distinguished from automated results. If a needed check cannot run, report that gap rather than claiming success or mandating a new framework. Existing baseline failures are separated from regressions. A Windows/Web target does not force both exports for a prose-only or unrelated change. Existing implementation commit and skill-specific PR behavior is preserved.

### T6: Add Godot-native prototype paths

Dependencies: T3, T4, T5.

Adapt `prototype` and its logic/UI references to choose the smallest artifact that answers the design question. Default gameplay, scene, and in-game UI work to runnable Godot scenes or small projects. Keep HTML for engine-independent explorations. Follow project placement, naming, and launch conventions.

Acceptance: a gameplay or in-game UI question no longer produces mandatory React routes or a standalone HTML game substitute. Each prototype states its question, how to run it, what to observe, and its verdict. Keep throwaway scope and the existing evidence/branch capture workflow. Do not require a full game architecture for an experiment.

### T7: Provide submodule linking and team installation instructions

Dependencies: T2, T3.

Add linking tooling similar in purpose to upstream's removed `scripts/link-skills.sh`, adapted for project-local installation and Windows. Start with one PowerShell entry point; support future Claude use without making it a requirement for Codex setup. Link individual promoted skills from `.agents/toolkit/skills/<bucket>/<skill>/` into `.agents/skills/<skill>/`. Keep in-progress skills opt-in.

Resolve paths from explicit project/toolkit locations, not the caller's working directory. Use a supported local directory-link mechanism, with actionable instructions if the environment cannot create it. Do not copy upstream's deletion of existing ordinary destination directories. Detect collisions and only maintain links owned by this setup.

Acceptance: a fresh scratch game repository can initialize a pinned submodule, run setup, and expose the expected Codex skills. Running setup twice is safe. Paths containing spaces and invocation from another directory work. Real destination files, project-specific skills, and `.agents/project/` are preserved. Missing/uninitialized submodules produce clear guidance. Document clone/init, reviewed revision updates, link refresh, generated-link ignore rules, and future Claude considerations. Existing toolkit Git state is not changed by setup. Verify Godot import/export exclusion guidance for embedded toolkit content without migrating a real game.

### T8: Remove TypeScript specialization and repair fork residue

Dependencies: T2, T3, T7.

Remove `skills/in-progress/setup-ts-deep-modules/` and update its bucket index and active references. Repair the missing `SCOPE.md` and install-block references, remove obsolete plugin-manifest authority, and replace upstream installation/publishing assumptions with this fork's actual workflow. Remove orphaned `.changeset/` metadata if no release workflow still uses it. Preserve the license and relevant attribution.

Acceptance: no active route points to the removed skill or deleted files. Installation documentation uses this fork and the agreed submodule arrangement. The docs-writing guide no longer assumes publication to the upstream author's website. Do not restore release packages, plugin manifests, or deleted miscellaneous skills solely to silence stale references. Preserve the user's pending `AGENTS.md` replacement and verify its regular-file Git mode when that change is staged later.

### T9: Verify the integrated toolkit and synchronize documentation

Dependencies: T1 through T8.

Update README navigation, bucket indexes, `ask-matt`, and affected human-facing skill pages alongside their owning changes; use this ticket for final cross-checks rather than deferring all documentation until the end. Check relative links, renamed/removed invocation references, frontmatter/metadata consistency, and the repository's prose conventions. Keep historical records distinguishable from live instructions.

Acceptance: run focused interview scenarios demonstrating one question at a time, project-owned terminology without a root glossary, proportional design for a small game change, existing GDScript checks, a Godot prototype request, and correct output paths from a submodule. Check linking tooling in temporary fixtures for repeat runs and collisions. Verify representative link targets are exposed to Codex when the runtime permits it; report discovery limitations explicitly. These focused checks do not require Godot runtime suites for documentation-only changes. Report actual checks and remaining limitations.

## Ordering and completion

T1 and T2 can start independently. T3 follows T2. T4 follows T3. T5 follows T1, T3, and T4; T6 follows T5. T7 can follow T2 and T3 independently of the Godot feedback work. T8 follows T7 and the naming/path changes. T9 closes the integrated work.

For later tracker tickets, translate these dependencies into explicit blocking relationships. Keep each ticket's acceptance criteria, project/toolkit scope, and relevant spec pointer. Do not publish tickets until the user requests that step and the tracker destination is established.

Planning is complete when this document captures the agreed scope and actionable work breakdown. Implementation is complete only after the later authorized changes meet the ticket criteria. Migrating `blackout_protocol` is a separate follow-up after the toolkit is ready.

## Implementation record

T1 through T9 are implemented in this repository. The setup skill is renamed, interviewing is sequential, shared project/Godot references govern adapted workflows, linking tooling is available, and the TypeScript specialization and orphaned release metadata are removed. Existing commit/PR workflows and user invocation policies are preserved.

See [verification](verification.md) for automated fixture results, independent workflow scenarios, review fixes, validator compatibility details, and host/runtime limitations. No actual tracker specs or tickets were created; the planning groups above remain the accepted scope record.
