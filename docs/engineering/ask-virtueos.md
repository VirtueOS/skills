## What it does

`ask-virtueos` recommends a skill or workflow and stops. Its routes describe this Godot-first fork. It reads a skill before making a recommendation that depends on its behavior.

## When to reach for it

Invoke `/ask-virtueos` explicitly when you know the task but not which workflow fits. Small agreed changes can go straight to implement; uncertainty goes through an interview or runnable prototype first.

## Common questions

**Which workflows are available?**

The [root reference](../../README.md#reference) and [skill folders](../../skills/engineering/README.md) describe the pinned revision. Check the linked `SKILL.md`, not a removed plugin manifest, for authoritative behavior.

The [art bucket](../../skills/art/README.md) includes [3d-art](../art/3d-art.md) for concepts, models, materials, animation, and requested Godot integration, following the consuming project's art direction. The router recommends it for asset production; separate gameplay implementation belongs to implement.

**Where does project configuration live?**

Follow the game's instructions. [setup-virtueos-skills](setup-virtueos-skills.md) reuses existing guidance and defaults new configuration outside the toolkit. See [installation](../installation.md) for linking and updates.

**Does it invoke every recommended skill?**

No. User-invoked skills remain explicit-only. The router names the next step; the user chooses it. At the end of an implementation-oriented interview, [grilling](../productivity/grilling.md) offers implement or to-spec. Choosing that named route is an explicit invocation; a separate slash command is unnecessary.

## It's working if

- The recommendation fits the size and uncertainty of the task.
- Godot behavior is explored in the engine when necessary.
- It recommends existing workflows without adding unnecessary process.

## Where it fits

Start with [grill-with-docs](grill-with-docs.md) when decisions remain open, or [prototype](prototype.md) when an answer needs runnable evidence. [to-spec](to-spec.md) and [to-tickets](to-tickets.md) break down larger agreed work. [implement](implement.md) builds a concrete task; [implement-spec](implement-spec.md) orchestrates its task graph. [code-review](code-review.md) checks standards and spec fidelity, and [retro](retro.md) improves the environment afterward.
