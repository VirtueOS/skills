## What it does

Configure a consuming project for the VirtueOS workflows, reusing its tracker and documentation conventions. This sets up project guidance; linking installed skills is a separate installation step.

## When to reach for it

Invoke this explicitly. Invoke setup-virtueos-skills for first-time tracker-dependent use or when project configuration changes.

## Common questions

**What happened to setup-matt-pocock-skills?**

This fork renamed it to setup-virtueos-skills. Use the new command.

**Will it replace my project layout?**

No. Existing instructions and documentation take precedence. New configuration defaults to .agents/project/ only if no convention exists.

**Must I create a glossary or install a test framework?**

No. It points to existing terminology and checks; Godot mechanic pages and standalone GDScript tests are valid.

**Where is installation documented?**

See the installation guide for the pinned submodule and local linking command.

## It's working if

- Project configuration lives outside the toolkit.
- Tracker workflows know the correct operations and labels.
- Existing project authorities remain the source of truth.

## Where it fits

See [installation](../installation.md) before linking, then configure the project for tracker-dependent workflows. [ask-virtueos](ask-virtueos.md) maps the available workflows.
