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

It finishes with the workflow choice defined by [grilling](../productivity/grilling.md): [implement](implement.md) to build the agreed work here, or [to-spec](to-spec.md) to prepare a specification for later work or other agents. Choosing a named option starts that skill without requiring a separate slash command. Preparing a specification does not itself dispatch agents.

## It's working if

- You receive one decision question at a time.
- Resolved terminology appears in the correct project document.
- No game documentation is written into the toolkit submodule.

## Where it fits

After the interview, choose [implement](implement.md) here or [to-spec](to-spec.md) for a specification. Larger specifications can continue through [to-tickets](to-tickets.md) before implementation. [ask-virtueos](ask-virtueos.md) maps the available workflows.
