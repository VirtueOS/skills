## What it does

Build a supplied plan, spec, or tickets, verify the result, review it, and commit task-related work to the current branch. Existing testing agreements are reused.

## When to reach for it

Invoke this explicitly. Invoke implement for a concrete piece of work. A local plan is enough; tracker setup is only needed for tracker operations.

## Common questions

**Does this still commit automatically?**

Yes. The existing commit behavior is preserved, while unrelated user edits remain intact.

**Does every edit need a new testing approval?**

No. Boundaries agreed during planning remain valid until scope materially changes.

**Are headless tests enough for gameplay?**

No. Gameplay changes also need playable evidence, with human checks pending until observations return.

## It's working if

- The smallest sufficient change satisfies the plan.
- Checks are appropriate to the affected behavior.
- Review covers new and uncommitted files before the commit.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
