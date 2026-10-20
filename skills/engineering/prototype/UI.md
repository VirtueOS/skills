# UI and presentation prototypes

For in-game UI, use Godot controls and scenes matching the project's engine version and authoring conventions. Build a small number of meaningfully different variants only where comparing them answers the question. Reuse existing assets when possible.

Provide a simple variant selector or separate launchable scenes, plus a repeatable scenario showing the same state in each version. Compare readability, input/focus, scaling, and the relevant gameplay context. Test the intended input method and relevant viewport sizes. Headless output does not establish visual quality.

For a genuinely web-based tool, use its existing routing and UI conventions. React, Next.js, URL parameters, and a floating toolbar are options, not requirements for a Godot prototype.

Record the chosen direction, why it won, and remaining uncertainty. Follow the capture rules in [SKILL.md](SKILL.md).
