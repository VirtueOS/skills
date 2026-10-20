## What it does

Synthesize the agreed conversation into a spec and publish it through the configured tracker. Reuse decisions already made; do not restart the interview.

## When to reach for it

Invoke this explicitly. Invoke when agreed work needs a durable spec. Configure tracker operations first if publishing requires them.

## Common questions

**How detailed should it be?**

Cover the actual behavior and constraints without speculative user stories or architecture.

**Does it ask about testing again?**

Only if a material boundary is unresolved; otherwise reuse the planning agreement and include runtime/playable evidence where needed.

## It's working if

- The spec preserves agreed constraints.
- Testing describes observable behavior.
- The output lands in the consuming project or its tracker.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
