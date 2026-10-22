# Godot toolkit adaptation verification

The original toolkit changes were verified on Windows with PowerShell 7 on 2026-10-21. That historical verification predates the batch setup conversion described in this fork. No game repository was migrated or modified, and no tracker issues were published.

## Automated checks

- Historical PowerShell linker integration test passed before the batch conversion. The current batch test is a smoke test for copying the four toolkit files over existing copies and creating a junction at a path containing spaces and has not been run as part of this conversion.
- The historical integration suite also created an actual local Git submodule, confirmed its pinned gitlink and unchanged toolkit Git state, and read the linked skill content.
- An actual toolkit skill is installed into a scratch game. Both shared project and Godot references are readable after resolving the installed directory link to its physical source. Entry points explicitly require this resolution because the flat discovery path differs from the source bucket path.
- `python scripts/check-toolkit.py`: checks local Markdown links, promoted/bucket navigation, skill identities, invocation-policy consistency, human-page sections, and prose conventions. This uses only the Python standard library.
- All 33 original manifests and invocation-policy files were parsed as YAML. The bundled skill-creator validator also checked required fields, names, descriptions, and unfinished placeholders. Its schema predates the collection's existing `disable-model-invocation` and `argument-hint` fields: 22 skills therefore used temporary compatibility copies after those original fields and policies were independently checked. No invocation policy was removed from the actual skills.
- Historical PowerShell parser checks and Python syntax compilation passed. `git diff --check` passed.

The linker suite first failed with the missing implementation, then passed with the new script. No Godot executable, import, test, or export command was needed to verify changes to these instructions and linking tools.

## Independent workflow checks

An independent agent simulated five requests using the actual skills and relevant references:

| Request | Observed behavior |
| --- | --- |
| Grill a stamina-limited dash with unresolved jump interaction | One decision question with a recommendation, followed by waiting |
| Configure a game with mechanic-owned terms and standalone GDScript tests | Reuse its index, terminology pages, and checks; write project configuration outside the toolkit |
| Compare dash momentum and immediate stopping | Choose a runnable Godot scene, not an HTML substitute; feel verdict requires play evidence |
| Add a small flag to an existing pickup | Inspect and retain its existing owner rather than create a new architecture |
| Implement a local plan with agreed test boundaries | Reuse existing SceneTree checks, preserve the testing agreement, and keep manual evidence pending until observed |

This was a behavioral simulation, not execution of those game changes. It found ambiguities about starting-commit capture, explicit spec precedence, and API terminology; those were corrected.

## Review

Parallel Standards and Spec reviews examined the diff from the starting commit, including new task files. The Standards review found the flattened-link reference issue and a stale questionnaire FAQ. The Spec review found batch-interview residue and vocabulary restrictions in a report reference. The fixes were rechecked by the respective reviewers; neither reported an unresolved finding.

## Limits and follow-up

Filesystem linking and reference access are verified. The running Codex app's skill selector was not reconfigured or exercised against a real game installation. After a project owner adopts the submodule, verify discovery in that project's host session using [the installation guide](installation.md).

Godot import/export exclusion guidance was checked against official documentation. A project owner must still inspect its actual export configuration/package when migrating. Gameplay, Windows/Web exports, and game test baselines were not changed or executed by this toolkit task.
