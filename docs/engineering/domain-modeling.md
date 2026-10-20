## What it does

Sharpen domain language and record important tradeoffs where the project already owns them. A glossary is one supported convention, not a required replacement for gameplay documentation.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use directly when resolving terminology or ADRs, or through grill-with-docs and architecture interviews.

## Common questions

**What if terms live in mechanic pages?**

Update the owning pages and their navigation. Do not create a second glossary.

**Which decisions deserve an ADR?**

Only real tradeoffs that are hard to reverse and surprising without their context.

## It's working if

- A concept has one authoritative definition.
- Code and documentation contradictions are surfaced.
- Routine reversible choices do not generate unnecessary ADRs.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
