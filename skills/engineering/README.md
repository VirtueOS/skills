# Engineering

Godot-first workflows. Project instructions take precedence over defaults.

## User-invoked

- **[ask-virtueos](./ask-virtueos/SKILL.md)**: Ask which skill or flow fits your situation. A router over the skills in this repo.
- **[grill-with-docs](./grill-with-docs/SKILL.md)**: A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go.
- **[implement](./implement/SKILL.md)**: Implement a piece of work based on a spec or set of tickets.
- **[implement-spec](./implement-spec/SKILL.md)**: Implement the result of /to-spec and /to-tickets in code.
- **[improve-codebase-architecture](./improve-codebase-architecture/SKILL.md)**: Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one you pick.
- **[retro](./retro/SKILL.md)**: Conduct a retrospective on a coding session.
- **[setup-virtueos-skills](./setup-virtueos-skills/SKILL.md)**: Configure a project for the VirtueOS engineering skills, reusing its tracker, documentation, and Godot validation conventions. Run once before tracker-dependent flows or when project configuration changes.
- **[to-spec](./to-spec/SKILL.md)**: Turn the current conversation into a spec and publish it to the project issue tracker: no interview, just synthesis of what you've already discussed.
- **[to-tickets](./to-tickets/SKILL.md)**: Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edges, published to the configured tracker (edges as text in one file per ticket locally, or native blocking links on a real tracker).
- **[triage](./triage/SKILL.md)**: Move issues and external PRs through a state machine of triage roles, categorise, verify, grill if needed, and write agent-ready briefs.
- **[wayfinder](./wayfinder/SKILL.md)**: Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and resolve them one at a time until the way to the destination is clear.

## Model-invoked

- **[code-review](./code-review/SKILL.md)**: Review the changes since a fixed point (commit, branch, tag, or merge-base) along two axes: Standards (does the code follow this repo's documented coding standards?) and Spec (does the code match what the originating issue/spec asked for?). Runs both reviews in parallel sub-agents and reports them side by side. Use when the user wants to review a branch, a PR, work-in-progress changes, or asks to "review since X".
- **[codebase-design](./codebase-design/SKILL.md)**: Shared vocabulary for designing deep modules. Use when the user wants to design or improve a module's interface, find deepening opportunities, decide where a seam goes, make code more testable or AI-navigable, or when another skill needs the deep-module vocabulary.
- **[diagnosing-bugs](./diagnosing-bugs/SKILL.md)**: Diagnosis loop for hard bugs and performance regressions. Use when the user says "diagnose"/"debug this", or reports something broken/throwing/failing/slow.
- **[domain-modeling](./domain-modeling/SKILL.md)**: Build and sharpen a project's domain model. Use when discussing codebase terminology, writing or editing a GLOSSARY.md, or recording or editing an ADR.
- **[pr](./pr/SKILL.md)**: Use when writing a PR body.
- **[prototype](./prototype/SKILL.md)**: Build a throwaway prototype to answer a gameplay, logic, or UI design question. Prefer runnable Godot scenes for engine behavior and small HTML demos for engine-independent exploration.
- **[research](./research/SKILL.md)**: Investigate a question against high-trust primary sources and capture the findings as a Markdown file in the repo. Use when the user wants a topic researched, docs or API facts gathered, or reading legwork delegated to a background agent.
- **[tdd](./tdd/SKILL.md)**: Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refactor", or wants integration tests.
- **[wizard](./wizard/SKILL.md)**: Generate an interactive wizard in the project's available shell that walks a human through steps only they can perform. Use when provisioning infrastructure, setting up credentials or CI secrets, walking an unfamiliar third-party dashboard, or running a one-off migration or cutover. Don't invoke this for steps the agent can perform itself.
