## What it does

Interview about a plan or decision, exactly one question at a time. Each answer determines the next question; independent decisions are never bundled into a questionnaire.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use directly for an interview, or let a workflow such as grill-with-docs or triage load it.

## Common questions

**Can it ask a whole round at once?**

No. This fork always asks one decision question, recommends an answer, and waits. It keeps prerequisite-aware planning internally.

**Does it ask me facts it could inspect?**

It investigates available code and docs itself, delegating independent fact finding when available. Your decisions remain yours.

**When does implementation start?**

For implementation work, the final question summarizes the scope and offers [implement](../engineering/implement.md) to build it here or [to-spec](../engineering/to-spec.md) to prepare a specification for later work or other agents. It recommends a route. Choosing the named route confirms the scope and starts that skill; a separate slash command is unnecessary. An already-confirmed scope and route are reused. Non-implementation interviews finish with shared understanding.

## It's working if

- One question arrives with a recommendation.
- Your answer changes the next question.
- Already-settled decisions are reused.

## Where it fits

[grill-me](grill-me.md) and [grill-with-docs](../engineering/grill-with-docs.md) use this shared interview discipline. [ask-virtueos](../engineering/ask-virtueos.md) maps the available workflows.
