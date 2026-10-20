# Writing skill documentation

Each promoted skill has a human-facing page at `docs/<bucket>/<skill-name>.md`. Keep it synchronized when behavior changes, and update the root README, bucket index, and `ask-virtueos` routing when relevant. These docs belong to this fork; they are not published automatically on the upstream author's website.

Use repository-relative links so a pinned submodule carries matching documentation. Link sibling skill pages rather than upstream versions of customized behavior. External references can remain absolute when they are the authority for a fact.

## Page structure

Pages have no H1. Use these sections in order:

- `## What it does`: lead with the concrete outcome and defining constraint.
- `## When to reach for it`: say whether the user invokes it or it can activate automatically, and distinguish nearby workflows.
- Optional prerequisites or behavior details only where they help a reader choose or use the skill.
- `## Common questions`: answer real questions from this workflow and the user's project. Avoid padding or copying an unrelated audience's concerns.
- `## It's working if`: observable signals, not checks of wording inside the skill.
- `## Where it fits`: link the relevant neighboring workflows and the router.

Keep installation commands in [installation.md](installation.md), not copied into every page. Keep agent execution instructions in `SKILL.md`; human docs explain behavior and tradeoffs.

## Renames and removals

Move the current page with a renamed promoted skill. Keep the old page as an archived entry pointing at its replacement, preserving its previous body where useful. Retired promoted skills keep an archive notice; removed beta skills do not need a published page. Historical changelog entries stay historical.

## Completion

Check page sections, links, naming, invocation mode, and agreement with the skill. Use plain prose without em dashes. Project-specific paths and terminology belong to project guidance; examples must not become mandatory layouts.
