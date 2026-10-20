# Logic prototypes

Choose the smallest runnable harness that makes a state model inspectable. Use Godot when the answer depends on engine lifecycle, physics, scene ownership, or signals. For engine-independent exploration, a standalone HTML file or existing scripting environment may be easier to share.

Show relevant state after each action. Include the edge cases that distinguish the design alternatives and a short guided scenario alongside free exploration. Keep expected outcomes explicit so a viewer can tell whether the model matches the question.

Avoid persistence and production abstractions unless they are the subject of the experiment. Give launch steps, record the verdict and limits, and follow the capture rules in [SKILL.md](SKILL.md).
