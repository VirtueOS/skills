---
name: grilling
description: Interview the user about a plan, decision, or idea, one question at a time. Use when the user wants to stress-test their thinking or uses a grill trigger.
---

Interview until you reach a shared understanding. Keep a **design tree** of decisions and their prerequisites. The **frontier** contains decisions whose prerequisites are settled.

Ask **exactly one decision question per turn**, then wait for the answer. Choose the most useful question on the frontier and give your recommendation. Do not bundle independent decisions into subquestions, a questionnaire, or a multi-item question tool call.

Use this format:

```text
❓ Q1: <one decision question>

➡️ Recommended: <answer and short reason>
```

Word the question so “yes” accepts the recommendation where practical. After each answer, update the tree and choose the next question from the new frontier. Reuse decisions already settled in the conversation.

**Facts are your job; decisions are the user's.** Inspect available code, instructions, and documentation rather than asking facts you can discover. Delegate independent fact finding when subagents are available; continue with one unrelated decision while that research runs. Ask for access or a location only when you cannot discover the needed source.

The interview is done when every relevant branch is settled and no material assumption remains unstated. Documentation wrappers may record settled terms and decisions during the interview.

For an implementation-oriented interview, summarize the agreed scope and make the final question a choice of the next workflow:

- [implement](../../engineering/implement/SKILL.md): build the agreed work here, with its checks, review and commit.
- [to-spec](../../engineering/to-spec/SKILL.md): synthesize and publish the agreed specification for later implementation or handoff to other agents. This route prepares the work; it does not dispatch agents.

Recommend the route that fits the task. This single workflow choice also confirms the summarized scope. The user's explicit selection of a named route authorizes invoking that skill; a separate slash command is unnecessary. Read and follow the selected skill before starting the next phase. If the user has already confirmed the scope and selected a route, continue through that skill without another confirmation. A request to implement the agreed scope selects implement. When only scope is confirmed and the route remains unclear, ask which route to take.

For interviews with no implementation outcome, finish by confirming shared understanding without offering engineering workflows.
