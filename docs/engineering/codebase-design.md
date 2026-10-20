## What it does

Use interface depth and locality to reduce real maintenance friction. The smallest sufficient design and project-owned terminology take precedence over architectural formulas.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use when a boundary or ownership decision is materially blocking a change; small features do not automatically need an architecture exercise.

## Common questions

**Are scenes, components, and signals acceptable?**

Yes. Use precise project terms and ownership. Engine side effects are legitimate; isolate deterministic rules where helpful.

**When should I add a layer?**

When a concrete requirement or demonstrated complexity/duplication makes its maintenance benefit clear.

**Should old tests always be deleted during deepening?**

No. Remove redundant implementation-coupled tests only after confirming replacement coverage and preserving useful regressions.

## It's working if

- The change introduces fewer concepts than it removes or clearly earns the additional ones.
- Callers and tests use meaningful boundaries.
- Existing scene ownership is respected.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
