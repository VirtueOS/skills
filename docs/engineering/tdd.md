## What it does

Build suitable deterministic behavior through a red-to-green loop at meaningful agreed boundaries. Existing project tools are used rather than a mandatory framework.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use directly for test-first work or through implement where automated checks provide meaningful feedback.

## Common questions

**Must we confirm every test?**

No. Agree the boundaries once during planning and revisit them when scope changes.

**How do gameplay feel and visuals fit?**

Use runtime or playtest evidence alongside rules tests. Artificial unit tests do not establish presentation quality.

**What makes a useful expected result?**

A known outcome from the spec or an independently worked example, not a repeat of the implementation.

## It's working if

- A relevant behavior test fails before the fix.
- Expected outcomes are independent of the tested implementation.
- Tests protect behavior rather than private structure.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
