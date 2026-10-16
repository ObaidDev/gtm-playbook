---
name: research
description: "Research a question about the Founder's market against primary sources and save the findings in the Workspace. Use only when a gtm-playbook skill tells you to run it."
user-invocable: false
---

# Research

In the research below, "the repo" is the Founder's Workspace, whose notes live in `gtm/research/` (see [STATE.md](../setup-gtm/STATE.md)). The workflow skill that called this one says what to research and what counts as a primary source for it.

Spin up a **background agent** to do the research, so you keep working while it reads.

Its job:

1. Investigate the question against **primary sources** (official docs, source code, specs, first-party APIs), not a secondary write-up of them. Follow every claim back to the source that owns it.
2. Write the findings to a single Markdown file, citing each claim's source.
3. Save it where the repo already keeps such notes; match the existing convention, and if there is none, put it somewhere sensible and say where.
