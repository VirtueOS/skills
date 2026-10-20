## What it does

Split agreed work into verifiable vertical slices with explicit blocking relationships, then publish the approved breakdown.

## When to reach for it

Invoke this explicitly. Invoke when a spec or plan is too large to implement as one coherent task.

## Common questions

**Does every ticket touch a web stack?**

No. A slice crosses only the relevant gameplay, scene/UI, data, and verification boundaries.

**Does it force prefactoring?**

Only when necessary to simplify this change with a concrete benefit.

**How are remaining decisions asked?**

One question at a time; existing approvals are reused.

## It's working if

- Every ticket is independently verifiable.
- Blockers reflect actual prerequisites.
- The breakdown avoids unrelated architecture work.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
