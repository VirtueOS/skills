## What it does

Answer one design question with throwaway runnable code. Gameplay and in-game UI default to Godot scenes; engine-independent diagrams or state exploration may use HTML.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use automatically or directly when seeing or playing a design will answer what conversation cannot.

## Common questions

**Do I need a complete game framework?**

No. Use the smallest runnable scene or isolated project that reaches the question.

**Can I still use HTML?**

Yes, when engine behavior does not matter. It must not substitute for physics, scene lifecycle, or game-feel evidence.

**What is retained?**

The verdict and validated decision feed the implementation. The prototype remains a primary source on a prototype branch, linked from the issue or local task record.

## It's working if

- Launch steps and the question are explicit.
- Relevant state or variants can be inspected.
- The verdict distinguishes observations from unverified assumptions.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
