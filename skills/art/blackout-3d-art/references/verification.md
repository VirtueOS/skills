# Evidence for art changes

Select checks from the task's acceptance criteria. A checklist entry is complete only after the relevant artifact or scene has been inspected. After a correction, repeat the affected comparison. Record observed defects and fixes when multiple passes are requested, rather than generating identical pass statements.

| Change | Useful evidence |
| --- | --- |
| 2D concept | Actual concept images compared with requested silhouette, proportions, palette, and variant count |
| New or substantially revised model | Real textured-model renders from three-quarter, front, and side; construction/detail checks against the approved concept; top/game-camera view when relevant |
| Texture or material revision | The actual model with its UVs, neutral-light before/after comparison, brush scale and seam inspection, and the game view when integrated |
| Modular tile | Existing/new modules side by side and in repeated/rotated combinations, with boundary, height, tone, and corner checks |
| Animation | Closed, intermediate, and open/active states showing pivot correctness and clearance, plus required clip/track preservation |
| Export | Reimported deliverable inspected for geometry, textures, materials, orientation, scale, and required clips |
| Godot integration | The actual consuming scene rendered with the replaced resource, plus relevant behavior checks and preserved resource/node/ID relationships |

For wall variants, find the current corner-join implementation through the project rather than assuming a historical script path. Confirm new variants are recognized and L-joints remain compatible with door openings. For protruding floor cells, inspect MeshLibrary transforms, GridMap cell rotations, vertical centering, and world-space bounds before changing the library height.

For mechanisms connected to gameplay, test the affected states through existing logic. A pressure indicator revision may need release, rapid re-entry, and independent instances checked; an ordinary static prop does not. Observe per-instance material behavior where indicators change independently.

Compare views of the same actual model. Generated concept images are not evidence of its geometry. Headless import success establishes loading, not visual correctness. When visual execution is unavailable, give exact scene/setup steps and observable pass/fail conditions, and keep that evidence pending until observations return. Separate existing baseline defects from regressions introduced by this task.
