## What it does

Investigate bugs through observed symptoms, repeatable feedback, falsifiable hypotheses, targeted instrumentation, and regression evidence. The loop follows the actual subsystem rather than assuming an HTTP service or browser.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use for difficult bugs or performance regressions, including Godot runtime, physics, timing, and presentation issues.

## Common questions

**Is a Bash script required for manual reproduction?**

No. A native-shell command and documented playable scenario are valid.

**What if I cannot automate the symptom?**

Use a focused human playtest loop and capture the observations. Hypotheses can guide reproduction, but uncertainty remains explicit and a fix needs actual failure-path verification.

**What about existing failures?**

Record the baseline and distinguish it from new regressions. Compare performance under the same scene and conditions.

## It's working if

- The repro reaches the reported symptom.
- Each probe tests a stated prediction.
- The original scenario is rechecked after the fix.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
