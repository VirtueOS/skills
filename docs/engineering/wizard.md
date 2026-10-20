## What it does

Generate a small interactive script for a human-only procedure. Choose the available shell; Bash is optional, and native Windows workflows can use PowerShell.

## When to reach for it

Invoke directly or let a relevant workflow select it. Use for repeatable steps the agent cannot perform itself, such as export credentials or an external setup procedure.

## Common questions

**Must Windows users install Bash?**

No. Use native PowerShell stages with progress, secret input, and explicit destinations.

**Is the Bash template still available?**

Yes. Use its helper library unchanged when Bash fits the project.

**Does the agent run the interactive procedure?**

It validates the script and hands it off; human input and irreversible steps remain explicit.

## It's working if

- Each stage has a clear action and result.
- Secrets are entered privately and stored only where needed.
- The script is validated with its chosen shell.

## Where it fits

The main flow is [grill-with-docs](grill-with-docs.md), [to-spec](to-spec.md), [to-tickets](to-tickets.md), then [implement](implement.md). [ask-virtueos](ask-virtueos.md) maps the available workflows.
