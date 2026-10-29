---
name: 3d-art
description: Create or revise concepts, 3D assets, textures, and animations, and integrate the requested result into Godot.
disable-model-invocation: true
---

Resolve this skill directory to its physical source if loaded through a discovery link; parent-relative references below use the toolkit bucket layout, not the flat discovery layout.

Read [project context](../../PROJECT_CONTEXT.md) before selecting the game root, guidance, and output paths. Work in the user's language. Execute the supplied art task through delivery; a separate team prompt is unnecessary.

## 1. Establish the task and baseline

Read the game's instructions and art documentation index. Check for [project verification rules](references/verification.md#project-verification-rules) before planning production and review. Capture the starting commit and worktree status in the game repository before edits. Trace existing assets from the actual scene or MeshLibrary through meshes, materials, textures, and import settings. Identify shared resources and instance overrides before deciding what to change.

Choose the requested mode, combining modes only when the request includes them:

| Mode | Deliverable |
| --- | --- |
| Concept | Requested 2D concept or visual alternatives |
| Model | Editable model source, real model previews, and requested export |
| Revision | Targeted changes to the existing geometry, textures, materials, or animation |
| Integration | The requested asset installed and verified in its consuming Godot scene |

Extract acceptance criteria from the request, approved concept, and current project: target asset and instances, dimensions, orientation, pivot, required nodes and clips, visual features to match, and deliverable paths/formats. Reuse stated decisions. Discover technical facts locally; ask only for unresolved choices or missing source files that affect the result. If a task requires exact matching, obtain the actual reference rather than inventing its contents.

Locate usable Blender, Godot, image, and rendering tools on this machine. Read [Godot guidance](../../GODOT.md) for engine work. Report unavailable capabilities and continue independent work; leave dependent production or verification pending rather than claiming success.

## 2. Load the relevant art requirements

Project-owned art direction is authoritative. Use [art-direction guidance](references/art-direction.md) to extract the task's style, construction, and readability requirements from its actual references. For a named asset family, locate the corresponding project page and approved source. When choosing colors, use [palette guidance](references/color-palette.md) and view the supplied images. Keep game-specific updates in the game's owning art page, outside a shared toolkit submodule.

Within the requested scope, resolve visual decisions from the user's current instruction, the approved concept, then current project guidance/resources. This skill prescribes no default genre, palette, brushwork, or asset-family design. Surface incompatible requirements rather than silently redesigning the asset.

## 3. Produce the requested result

For concepts and raster edits, use the host's available image workflow and follow its instructions. Label concepts as concepts. For 3D work, edit the actual model and save an editable source. Use a repeatable Blender script when procedural generation or repeated transformations justify it; run a supplied or changed script before claiming it works. A manual revision of an existing source does not require a new generator.

Preserve authored UVs, color zones, resource relationships, and behavior except where the task changes them. Match approved silhouette, proportions, construction, and detail placement. For animation, separate fixed and moving parts, preserve required node/clip names, and check pivots and motion clearance. Keep shared and instance-specific material changes at the requested scope.

Generate previews from the actual textured model. Use comparable neutral lighting to judge color and include the game-camera view when readability matters. New or substantially revised models normally need three-quarter, front, and side views; a narrow fix needs views that expose that fix. Prioritize a requested preview before optional exports. Supply separate images when requested; add an atlas comparison only when useful to the task.

## 4. Verify and correct

Use [verification guidance](references/verification.md) to select evidence for the change. Compare the current result against the acceptance criteria, fix observed defects, and repeat the affected check. Review silhouette/construction, color/detail/UV, and exported or integrated results only where those stages are in scope. A requested number of review passes means actual comparisons and corrections, with observations for each pass.

Generate exports only when requested or needed for authorized integration. Default Godot delivery to GLB with embedded textures and required animation clips; supply FBX or separate textures when requested or required by project conventions. Reimport an export into a temporary scene or workspace and inspect the resulting geometry, materials, UVs, and clips. Preserve existing export formats when the task is a targeted revision.

## 5. Integrate when requested

An instruction to import, replace, or add the specified asset authorizes that integration without another approval. Concept approval or model creation alone does not request installation. Show new visual alternatives for selection when a choice is needed; continue through installation when the user has already chosen the result and requested it.

Follow existing project resource paths and source/review locations. Keep preview files and Blender sources separate from runtime resources according to project conventions. Preserve dimensions, scale, orientation, pivot, stable UIDs, NodePaths, gameplay IDs, and required nodes unless the request changes them. Allocate a new free tile ID for a new tile; preserve IDs for replacements. Importing an asset does not imply placing it throughout levels or adding gameplay code.

Inspect the real consuming scene after import, including neighboring tiles or moving parts where relevant. If the task includes behavior changes, use the project's existing verification loop as well as visual evidence. Recommend `implement` for a separate gameplay implementation task; this explicit-only art skill is not started automatically by other workflows.

## 6. Review and deliver

Review all task changes against the captured baseline, including new files and the final previews. Account for each acceptance criterion with observed evidence or a specific pending limitation. Separate pre-existing defects from regressions. A task is complete when its requested artifacts exist, applicable checks pass, and the result satisfies the requested scope; unavailable evidence remains explicitly pending.

Return a short result, inline previews for visual work, exact links to editable sources and requested exports, and the imported resource paths or tile IDs when relevant. State checks performed and remaining limitations. Commit only when the user requested it or an explicitly selected parent workflow requires it; include task-related files only. Publishing and sending assets to others require their own user instruction.
