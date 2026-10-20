## What it does

Survey demonstrated architectural friction and present candidates for improvement. Each candidate must justify its maintenance benefit; adding abstractions is not the objective.

## When to reach for it

Invoke this explicitly. Invoke periodically or for a specific area that is becoming hard to change.

## Common questions

**Will it rewrite the game immediately?**

No. It presents candidates, then interviews you about the selected one, one question at a time.

**Must every scene become a service or deep module?**

No. Existing project ownership and terminology govern the design. A small local change may be the best result.

## It's working if

- Candidates point to actual friction and affected files.
- Benefits are concrete and proportional.
- Existing ADR conflicts are identified before changes.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
