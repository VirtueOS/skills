---
name: domain-modeling
description: Build and sharpen a project's domain model. Use when discussing codebase terminology, writing or editing a GLOSSARY.md, or recording or editing an ADR.
---

Resolve this skill directory to its physical source if loaded through a discovery link; parent-relative references below use the toolkit bucket layout, not the flat discovery layout.

Before project work, read [project context](../../PROJECT-CONTEXT.md) for roots, authoritative docs, and output paths.

# Domain Modeling

Actively build and sharpen the project's domain model as you design. This is the *active* discipline: challenging terms, inventing edge-case scenarios, and writing the glossary and decisions down the moment they crystallise. (Merely *reading* `GLOSSARY.md` for vocabulary is not this skill: that's a one-line habit any skill can do. This skill is for when you're changing the model, not just consuming it.)

## Documentation authority

Locate the project's terminology and ADR authorities through [project context](../../PROJECT-CONTEXT.md). A glossary is one valid convention; mechanic pages or other domain docs may already own the definitions. Update the owning source rather than creating a duplicate `GLOSSARY.md`.

If no terminology authority exists, create a glossary lazily on the first resolved term using [GLOSSARY-FORMAT.md](GLOSSARY-FORMAT.md). Use the established ADR location, defaulting to `docs/adr/` only when none exists. Both belong to the consuming project or active worktree, not the toolkit submodule.

## During the session

### Challenge against the glossary

When the user uses a term that conflicts with the existing authoritative terminology, call it out immediately. "Your glossary defines 'cancellation' as X, but you seem to mean Y. Which is it?"

### Sharpen fuzzy language

When the user uses vague or overloaded terms, propose a precise canonical term. "You're saying 'account': do you mean the Customer or the User? Those are different things."

### Discuss concrete scenarios

When domain relationships are being discussed, stress-test them with specific scenarios. Invent scenarios that probe edge cases and force the user to be precise about the boundaries between concepts.

### Cross-reference with code

When the user states how something works, check whether the code agrees. If you find a contradiction, surface it: "Your code cancels entire Orders, but you just said partial cancellation is possible. Which is right?"

### Update the owning terminology source inline

When a term is resolved, update its owning terminology page immediately, following that page's format. If a glossary is the established authority, use [GLOSSARY-FORMAT.md](GLOSSARY-FORMAT.md).

Keep glossary entries as definitions, separate from specs and implementation decisions. When terms live in a broader gameplay page, respect its existing structure rather than turning the whole page into a glossary.

### Offer ADRs sparingly

Only offer to create an ADR when all three are true:

1. **Hard to reverse**: the cost of changing your mind later is meaningful
2. **Surprising without context**: a future reader will wonder "why did they do it this way?"
3. **The result of a real trade-off**: there were genuine alternatives and you picked one for specific reasons

If any of the three is missing, skip the ADR. Use the format in [ADR-FORMAT.md](./ADR-FORMAT.md).
