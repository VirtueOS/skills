# Godot development feedback

Use the project-owned engine version, commands, coding standards, and authoring guidance discovered through [PROJECT_CONTEXT.md](PROJECT_CONTEXT.md). These skills target GDScript, 2D/3D, and Windows/Web without fixing a folder layout, executable path, or test framework.

## Choose evidence for the change

Agree meaningful test boundaries during planning. Reuse that agreement throughout implementation; reopen it when scope materially changes. Use the existing runner or standalone scripts. For suitable deterministic rules, write a failing behavior test before the smallest implementation. Derive expected results from a specification or worked example, independently of the implementation.

| Change | Useful evidence |
| --- | --- |
| Pure rules/state/persistence | Focused existing GDScript tests and relevant integration checks |
| Scripts, scenes, resources, editor tools | Project-documented import/parser checks, a runtime or editor smoke check, and affected tests |
| Gameplay, physics, timing, input, presentation | A repeatable playable scenario showing the intended behavior; automated checks alone do not establish feel |
| Platform/export behavior | Relevant Windows or Web export and target-runtime checks using existing presets |
| Documentation only | Links, terminology, status, and scope checks; engine/export suites are not implied |

Headless runs do not prove rendering, audio, input, or gameplay feel. State what you ran, the observed outcome, and remaining limits. If the agent cannot play the scenario, give the human exact steps and an observable pass/fail criterion; keep playtest verification pending until actual evidence returns. Distinguish human reports from agent-run checks and old logs. Existing baseline failures are separate from regressions. Do not run both exports for every change.

## Preserve authored content

Follow project-specific scene/resource ownership and import conventions. Inspect references before moving or editing `.tscn`, `.tres`, scripts, or assets. Preserve stable UIDs, NodePaths, gameplay IDs, inherited overrides, animation tracks, and resource relationships unless the task changes them. Inspect source and docs after renames. Keep generated `.godot/` content out of commits; preserve authored `.uid` and import settings according to project policy.

## Diagnose with the actual engine path

Prefer the smallest test, minimal scene, replay, or instrumented runtime scenario reproducing the exact symptom. Pin seeds, inputs, timing conditions, and engine/renderer where relevant. For performance, record comparable profiler or timing measurements before and after. A documented human playtest loop is valid when visual or device behavior cannot be automated; no Bash template is required. Source inspection and hypothesis generation may guide building a repro, but a fix is not verified until the actual failure path is rechecked.

## Scope

Separate gameplay redesign from mechanical refactoring. Keep terminology and ownership in project docs. Prefer a small function/class or existing scene owner when sufficient; introduce an autoload or new abstraction only when the actual scope calls for it.
