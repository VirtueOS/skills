Skills are organized into bucket folders under `skills/`:

- `engineering/`: daily code work
- `art/`: asset creation, revision, and integration
- `productivity/`: daily non-code workflow tools
- `in-progress/`: beta: public on purpose, feedback wanted, not shipped in the plugin

Every skill in `engineering/`, `art/`, or `productivity/` (the **promoted** buckets) must have a reference in the top-level `README.md`.

Each skill entry in the top-level `README.md` must link the skill name to its `SKILL.md`.

Each bucket folder has a `README.md` that lists every skill in the bucket with a one-line description, with the skill name linked to its `SKILL.md`. The promoted buckets' `README.md`s and the top-level `README.md` group entries into **User-invoked** and **Model-invoked**.

Skills in the promoted buckets also have a human-facing docs page at `docs/<bucket>/<skill-name>.md` (the docs tree mirrors those bucket folders under `skills/`). Docs are maintained in this fork and use relative links; they are not published automatically to the upstream website. When you add, rename, or change the behaviour of a skill in a promoted bucket, create or re-sync its docs page following [docs/writing-docs.md](./docs/writing-docs.md). A finished page carries four sections: **What it does**, **When to reach for it**, **Common questions**, and **It's working if**. `writing-docs.md` holds the template, the section order, and where to hunt for the questions.

Every `SKILL.md` is either user-invoked (`disable-model-invocation: true` plus `policy.allow_implicit_invocation: false` in `agents/openai.yaml`, reachable only by the human) or model-invoked (model- or user-reachable).

[`ask-virtueos`](./skills/engineering/ask-virtueos/SKILL.md) is the router that maps every user-reachable skill and how they relate. The same trigger that re-syncs a docs page applies to it: whenever you add, rename, remove, or change how a user-reachable skill fits the flows, re-read `ask-virtueos`'s `SKILL.md` and update it so the map stays accurate: a new skill it never mentions, or a stale one it still routes to, is a router that lies.

No em-dashes anywhere in this repo's prose (`SKILL.md` files, docs, `README.md`, `CHANGELOG.md`, ADRs, changesets, code comments). Where a sentence reaches for one, rewrite it instead with a comma, colon, period, parentheses, or a conjunction, whichever the sentence actually wants; never do a blind character substitution.

## Agent skills

### Triage labels

Canonical names, unchanged. See `docs/agents/triage-labels.md`.
