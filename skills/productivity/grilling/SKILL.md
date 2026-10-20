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

The interview is done when every relevant branch is settled and no material assumption remains unstated. Summarize the agreed scope and ask one final question confirming shared understanding before implementation. If the user already confirms the scope and requests implementation, proceed. Documentation wrappers may record settled terms and decisions during the interview.
