# Demand

Skills that run the Campaign loop: each Campaign tests one hypothesis about your ICP with one Lead magnet and the Artifacts that promote it.

## User-invoked

Reachable only when you type them (`disable-model-invocation: true`).

- **[plan-campaign](./plan-campaign/SKILL.md)**: Open a Campaign: one hypothesis about your ICP, the Target signal and judge-by date that will decide it, and the Artifacts it needs, in the planned state. Run after `value-prop`, and again for every new hypothesis.
- **[lead-magnet](./lead-magnet/SKILL.md)**: Outline the one Lead magnet a planned Campaign tests: a checklist or guide that solves one specific problem of your ICP with a distinct point of view, built from what already works on that problem and what your ICP asks about it, saved in the Campaign's folder. Run after `plan-campaign`, once per Campaign.
- **[social-post](./social-post/SKILL.md)**: Draft a Campaign's social posts: problem-first posts on your ICP's Platform, adapting posts already working in your niche, each ending with a link to the Lead magnet, never a comment-below call to action. Run after `lead-magnet`, once per Campaign.
- **[landing-page](./landing-page/SKILL.md)**: Write the landing page where a prospect downloads the Campaign's Lead magnet for their name, email, and Lead stage answer, built from the Lead magnet and your ICP's Lead stage, then build it in a free tool with guidance, set up through the tool's MCP server when you have one connected. Run after `lead-magnet`, once per Campaign.

## Model-invoked

None yet.
