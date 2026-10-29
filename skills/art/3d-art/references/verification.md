# Evidence for art changes

## Project verification rules

Before choosing checks, search the project's instructions, documentation index, and relevant art or asset-pipeline pages for verification rules. Follow links to applicable checklists, review scenes, validation tools, and evidence requirements. Use the project's documented setup and acceptance thresholds for the affected asset family and deliverable. If no art verification rules are found, select checks from the task and the guidance below. Surface conflicts with the requested task rather than silently dropping a requirement.

Keep project-specific procedures in the owning project documentation; this reference supplies reusable criteria.

## Select evidence for the change

Select checks from the task's acceptance criteria. A checklist entry is complete only after the relevant artifact or scene has been inspected. After a correction, repeat the affected comparison. Record observed defects and fixes when multiple passes are requested, rather than generating identical pass statements.

| Change | Useful evidence |
| --- | --- |
| 2D concept | Actual concept images compared with requested silhouette, proportions, palette, and variant count |
| New or substantially revised model | Real textured-model renders from three-quarter, front, and side; construction/detail checks against the approved concept; top/game-camera view when relevant |
| Texture or material revision | The actual model with its UVs, neutral-light before/after comparison, texture/detail scale and seam inspection, and the game view when integrated; inspect brushwork when the chosen style uses it |
| Modular tile | Existing/new modules side by side and in repeated/rotated combinations, with boundary, height, tone, and corner checks |
| Animation | Representative poses and transitions showing pivot correctness, clearance, and required clip/track preservation |
| Export | Reimported deliverable inspected for geometry, textures, materials, orientation, scale, and required clips |
| Godot integration | The actual consuming scene rendered with the replaced resource, plus relevant behavior checks and preserved resource/node/ID relationships |

For modular assets, inspect the combinations and placements supported by the project, including joins, rotations, and transitions to neighboring asset types. Diagnose alignment through the actual transforms, origins, and bounds before changing shared placement settings.

For assets connected to gameplay, exercise affected states and transitions through existing project logic. Check shared resources and instance overrides where appearance or animation must vary independently. Select cases from the asset's actual behavior and the scope of the change.

## Interpret and report evidence

Compare views of the same actual model. Generated concept images are not evidence of its geometry. Headless import success establishes loading, not visual correctness. When visual execution is unavailable, give exact scene/setup steps and observable pass/fail conditions, and keep that evidence pending until observations return. Separate existing baseline defects from regressions introduced by this task.
