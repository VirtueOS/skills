---
name: prototype
description: Build a throwaway prototype to answer a gameplay, logic, or UI design question. Prefer runnable Godot scenes for engine behavior and small HTML demos for engine-independent exploration.
---

Resolve this skill directory to its physical source if loaded through a discovery link; parent-relative references below use the toolkit bucket layout, not the flat discovery layout.

Read [project context](../../PROJECT_CONTEXT.md) and the project's prototype/run conventions. A prototype is **throwaway code that answers one question**. State that question before building.

## Choose the artifact

| Question | Artifact |
| --- | --- |
| Gameplay, physics, input, scene interaction, or game feel | Small runnable Godot scene or isolated project; read [GODOT.md](../../GODOT.md) |
| In-game UI or presentation | Godot UI/scene variants; read [UI.md](UI.md) |
| Engine-independent state/rules or a diagram | Small logic harness or HTML demo; read [LOGIC.md](LOGIC.md) |

If ambiguous, ask one question with a recommendation. Use existing engine, assets, layout, and naming conventions. Do not build a browser substitute when the question depends on Godot behavior.

## Keep it small and inspectable

1. Mark it as a prototype and place it according to project conventions. Do not introduce production architecture to answer an experiment.
2. Give exact launch steps and an observable scenario. Surface the relevant state and make variants easy to compare. A runnable scene is enough; a full game framework is not required.
3. Keep state in memory unless persistence is the actual question. Use disposable data when testing persistence.
4. Skip production polish and a dedicated test suite. Validate that the artifact runs; record any unavailable runtime/playtest evidence honestly.
5. Capture the question, verdict, observations, and limitations. Fold only the validated decision into production code. Keep the prototype as a primary source on a throwaway `prototype/<name>` branch, out of main, and link it from the implementation issue or local task record. Preserve unrelated work when creating or switching branches.
