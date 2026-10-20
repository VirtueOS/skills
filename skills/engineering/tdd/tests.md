# Good and bad tests

Test behavior through real project interfaces. The examples below describe hypothetical GDScript interfaces, not classes to add to every game or a required test framework.

```gdscript
# Meaningful behavior through the public interface.
var run = RunState.new()
run.collect_key("exit_key")
assert(run.can_open_exit())
```

Keep setup appropriate to the real boundary. Scene lifecycle, inherited resources, physics, and signals may need an instantiated scene or runtime scenario. A pure rules object cannot prove that a scene wires it correctly.

Prefer observable outcomes over private field inspection or internal call counts. Preserve useful regression coverage through refactors. Multiple related assertions can establish one behavior; assertion count is not the goal.

```gdscript
# Independently worked expected value from the game's rule: 10 + 5 points.
assert(score_for_pickups([10, 5]) == 15)
```

An assertion that recomputes the same algorithm as the implementation cannot independently catch its mistakes. Snapshot expectations copied blindly from the current output have the same problem.

For rendering, input, feel, and device behavior, combine relevant automated checks with the playable evidence in [Godot guidance](../../GODOT.md). Do not manufacture implementation-mirroring tests for documentation or trivial configuration edits.
