## What it does

Creates or revises Blackout Protocol concepts, models, textures, and animations, with optional Godot integration. It works from the supplied task, approved concept, and actual project resources, then delivers files with task-specific visual evidence.

## When to reach for it

Invoke `$blackout-3d-art` explicitly for an art task. Specify the asset or source, desired change, relevant concept, and whether installation in the game is requested. Existing context supplies details already agreed; a separate team prompt is unnecessary.

For example: `$blackout-3d-art Revise this door's materials to match the attached concept, preserve its animation, and replace the resource in the project.`

Use [grill-with-docs](../engineering/grill-with-docs.md) when the art brief needs decisions first. Use [implement](../engineering/implement.md) for a separate gameplay implementation task. Other workflows may read the art references, but this skill starts only when the user selects it.

## Common questions

**Will a concept request also create and import a model?**

No. Concept, model, revision, and integration are distinct modes. The requested modes determine the deliverables and checks. Approving a concept alone does not install an asset.

**Do I need to approve an import twice?**

No. Asking to import, replace, or add a specified asset authorizes that integration. A new unresolved visual choice may need selection, but existing choices are reused.

**Which art direction wins?**

The current task and approved concept guide the change, with project-owned art documentation taking precedence over bundled defaults. Historical variants do not become new tasks. New project decisions belong in the game's art pages.

**Does every model need a generation script?**

No. An editable source is required for model work; a repeatable script is useful for procedural or repeated operations. Existing sources can be edited directly. Changed scripts are executed before being reported as working.

**What happens if Blender or visual Godot checks are unavailable?**

The agent completes independent work, identifies the unavailable capability, and marks dependent production or evidence as pending. Headless loading is not reported as visual verification.

**Does it commit automatically like implement?**

Standalone art work commits only when requested. An explicitly selected parent workflow can require a task-only commit. Publication and sending files to colleagues need their own instruction.

## It's working if

- The result matches the requested mode, actual asset, and approved visual criteria.
- Real model previews support geometry and material claims; concepts are identified separately.
- Replacements preserve required scale, pivot, references, IDs, and behavior.
- Requested exports are inspected after reimport, and installed assets are checked in their consuming scene.
- Delivery names exact files and separates completed checks from pending evidence.

## Where it fits

This is the asset-production workflow in the [art bucket](../../skills/art/README.md). [ask-virtueos](../engineering/ask-virtueos.md) routes art requests here, while [implement](../engineering/implement.md) owns separate code work. Installation follows the shared [toolkit instructions](../installation.md).
