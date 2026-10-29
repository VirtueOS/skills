# VirtueOS Skills

A personal Godot-first fork of [Matt Pocock's skills](https://github.com/mattpocock/skills), adapted for indie development and team use through Codex. GDScript, 2D/3D, and Windows/Web are the baseline; project instructions own actual versions, paths, terminology, checks, and architecture.

## Install for a team

Use as a Git submodule at `.agents/toolkit/`, then run `setup-toolkit.bat` to copy toolkit guidance into `.agents/` and link the full `skills/` and `docs/` trees. See [installation and updates](docs/installation.md) for commands, generated-link ignore rules, optional Claude support, and migration from an existing copy.

Run [setup-virtueos-skills](skills/engineering/setup-virtueos-skills/SKILL.md) when tracker/documentation setup is needed. Game configuration belongs outside the shared submodule.

## Workflow

[grill-with-docs](skills/engineering/grill-with-docs/SKILL.md) resolves decisions one question at a time and reuses project terminology pages. Larger work flows through [to-spec](skills/engineering/to-spec/SKILL.md) and [to-tickets](skills/engineering/to-tickets/SKILL.md); small agreed tasks can go directly to [implement](skills/engineering/implement/SKILL.md).

Agree meaningful testing boundaries during planning, use existing checks, and require playable evidence for gameplay changes. Prefer the smallest sufficient solution. Implementation retains its review-and-commit behavior. [ask-virtueos](skills/engineering/ask-virtueos/SKILL.md) routes through this fork's workflows.

## Reference

User-invoked skills start only when requested. Model-invoked skills can also be selected by a matching task or another workflow. [Project context](skills/PROJECT_CONTEXT.md) explains submodule paths; [Godot guidance](skills/GODOT.md) covers verification and authoring invariants.

### Engineering

**User-invoked**

- **[ask-virtueos](skills/engineering/ask-virtueos/SKILL.md)**: Ask which skill or flow fits your situation. A router over the skills in this repo.
- **[grill-with-docs](skills/engineering/grill-with-docs/SKILL.md)**: A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go.
- **[implement](skills/engineering/implement/SKILL.md)**: Implement a piece of work based on a spec or set of tickets.
- **[implement-spec](skills/engineering/implement-spec/SKILL.md)**: Implement the result of /to-spec and /to-tickets in code.
- **[improve-codebase-architecture](skills/engineering/improve-codebase-architecture/SKILL.md)**: Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
- **[retro](skills/engineering/retro/SKILL.md)**: Conduct a retrospective on a coding session.
- **[setup-virtueos-skills](skills/engineering/setup-virtueos-skills/SKILL.md)**: Configure a project for the VirtueOS engineering skills, reusing its tracker, documentation, and Godot validation conventions. Run once before tracker-dependent flows or when project configuration changes.
- **[to-spec](skills/engineering/to-spec/SKILL.md)**: Turn the current conversation into a spec and publish it to the project issue tracker: no interview, just synthesis of what you've already discussed.
- **[to-tickets](skills/engineering/to-tickets/SKILL.md)**: Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edges, published to the configured tracker (edges as text in one file per ticket locally, or native blocking links on a real tracker).
- **[triage](skills/engineering/triage/SKILL.md)**: Move issues and external PRs through a state machine of triage roles, categorise, verify, grill if needed, and write agent-ready briefs.
- **[wayfinder](skills/engineering/wayfinder/SKILL.md)**: Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and resolve them one at a time until the way to the destination is clear.

**Model-invoked**

- **[code-review](skills/engineering/code-review/SKILL.md)**: Review the changes since a fixed point (commit, branch, tag, or merge-base) along two axes: Standards (does the code follow this repo's documented coding standards?) and Spec (does the code match what the originating issue/spec asked for?). Runs both reviews in parallel sub-agents and reports them side by side. Use when the user wants to review a branch, a PR, work-in-progress changes, or asks to "review since X".
- **[codebase-design](skills/engineering/codebase-design/SKILL.md)**: Shared vocabulary for designing deep modules. Use when the user wants to design or improve a module's interface, find deepening opportunities, decide where a seam goes, make code more testable or AI-navigable, or when another skill needs the deep-module vocabulary.
- **[diagnosing-bugs](skills/engineering/diagnosing-bugs/SKILL.md)**: Diagnosis loop for hard bugs and performance regressions. Use when the user says "diagnose"/"debug this", or reports something broken/throwing/failing/slow.
- **[domain-modeling](skills/engineering/domain-modeling/SKILL.md)**: Build and sharpen a project's domain model. Use when discussing codebase terminology, writing or editing a GLOSSARY.md, or recording or editing an ADR.
- **[pr](skills/engineering/pr/SKILL.md)**: Use when writing a PR body.
- **[prototype](skills/engineering/prototype/SKILL.md)**: Build a throwaway prototype to answer a gameplay, logic, or UI design question. Prefer runnable Godot scenes for engine behavior and small HTML demos for engine-independent exploration.
- **[research](skills/engineering/research/SKILL.md)**: Investigate a question against high-trust primary sources and capture the findings as a Markdown file in the repo. Use when the user wants a topic researched, docs or API facts gathered, or reading legwork delegated to a background agent.
- **[tdd](skills/engineering/tdd/SKILL.md)**: Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refactor", or wants integration tests.
- **[wizard](skills/engineering/wizard/SKILL.md)**: Generate an interactive wizard in the project's available shell that walks a human through steps only they can perform. Use when provisioning infrastructure, setting up credentials or CI secrets, walking an unfamiliar third-party dashboard, or running a one-off migration or cutover. Don't invoke this for steps the agent can perform itself.

### Art

**User-invoked**

- **[blackout-3d-art](skills/art/blackout-3d-art/SKILL.md)**: Create or revise Blackout Protocol concepts, models, textures, and animations, with task-specific visual checks and optional Godot integration. See the [usage guide](docs/art/blackout-3d-art.md).

**Model-invoked**

None yet.

### Productivity

**User-invoked**

- **[grill-me](skills/productivity/grill-me/SKILL.md)**: A relentless interview to sharpen a plan or design.
- **[handoff](skills/productivity/handoff/SKILL.md)**: Compact the current conversation into a handoff document for another agent to pick up.
- **[teach](skills/productivity/teach/SKILL.md)**: Teach the user a new skill or concept, within this workspace.
- **[to-questionnaire](skills/productivity/to-questionnaire/SKILL.md)**: Turn a decision you can't fully answer into a questionnaire for someone else to fill in.
- **[wait-what](skills/productivity/wait-what/SKILL.md)**: Stop. That last message did not land: re-pitch it.

**Model-invoked**

- **[grilling](skills/productivity/grilling/SKILL.md)**: Interview the user about a plan, decision, or idea, one question at a time. Use when the user wants to stress-test their thinking or uses a grill trigger.
- **[writing-for-agents](skills/productivity/writing-for-agents/SKILL.md)**: Writing documents for agents. Use when creating or editing skills, or modifying AGENTS.md or CLAUDE.md.

## Maintenance

The [adaptation plan](docs/skill-adaptation.md) records the accepted scope. Keep human pages, bucket indexes, and the router synchronized with skill behavior. Review upstream changes selectively; each game adopts a toolkit revision through its normal workflow. [In-progress skills](skills/in-progress/README.md) are opt-in.

Run `call tests\test-setup-toolkit.bat` for a toolkit setup smoke check and `python scripts/check-toolkit.py` for document/metadata consistency. Setup needs Windows directory junction support.

The original MIT [license](LICENSE) and attribution are retained. Historical [changelog entries](CHANGELOG.md) describe upstream releases, not current installation behavior.
