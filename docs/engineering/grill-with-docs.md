## What it does

Run a one-question-at-a-time interview while sharpening project terminology and recording justified decisions. Existing gameplay pages can own terms; a new root glossary is not required.

## When to reach for it

Invoke this explicitly. Invoke grill-with-docs before a project change whose scope or design needs agreement.

## Common questions

**Where are terms written?**

In their existing authoritative pages, found through project instructions. A glossary is created lazily only when no terminology authority exists.

**Does every decision become an ADR?**

No. ADRs are for real tradeoffs that are hard to reverse and surprising without context. Other decisions can feed a requested plan or spec.

**Does it implement automatically?**

It confirms shared understanding first. An explicit implementation request after agreement can proceed without another interview.

## It's working if

- You receive one decision question at a time.
- Resolved terminology appears in the correct project document.
- No game documentation is written into the toolkit submodule.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
