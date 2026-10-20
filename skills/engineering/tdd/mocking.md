# Test doubles and real engine behavior

Prefer real project behavior through a meaningful boundary. Use a controlled clock, seeded randomness, temporary persistence location, or stand-in for an external platform/network service when needed for a repeatable test.

Keep important dependencies explicit using the project's existing conventions. A small GDScript object can accept data or a dependency directly; a new dependency-injection framework is not required.

Use operation-specific external boundaries so expected outcomes are clear. Avoid replacing all internal scene collaborators with mocks: that can pass while signals, NodePaths, lifecycle, and resource ownership are broken in the actual game.

Instantiate the relevant scene or use a playable repro when engine behavior is the requirement. Keep fake-based rules tests separate from evidence that the real integration works. Mocking is a tool for controlling a boundary, not a mandate to redesign every class.
