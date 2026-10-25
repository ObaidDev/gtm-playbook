# gtm-playbook

Stateful go-to-market skills for Claude Code, distilled from material I have learned from. Instead of generic advice, the skills keep your GTM work in your Workspace (a Profile, Campaigns, Customer conversations, an Experiment log) and build on it every time you run them.

> **Status:** early. `setup-gtm`, `define-icp`, `value-prop`, `outcome-positioning`, `outcome-pricing`, `plan-campaign`, `lead-magnet`, `social-post`, and `landing-page` ship today; the other skills below are planned, and each links to its ticket. Vocabulary is defined in [CONTEXT.md](./CONTEXT.md).

## Install

In Claude Code (2.1.275 or later):

```
/plugin install gtm-playbook --marketplace ObaidDev/gtm-playbook
```

On older versions, add the marketplace first, then install:

```
/plugin marketplace add ObaidDev/gtm-playbook
/plugin install gtm-playbook@obaiddev
```

Then open the folder you want to use as your Workspace (one per product), run `/gtm-playbook:setup-gtm`, then `/gtm-playbook:define-icp`, `/gtm-playbook:value-prop`, `/gtm-playbook:outcome-positioning`, and `/gtm-playbook:outcome-pricing`. When you are ready to test a hypothesis, run `/gtm-playbook:plan-campaign`, then `/gtm-playbook:lead-magnet`, `/gtm-playbook:social-post`, and `/gtm-playbook:landing-page`. All state is kept in a `gtm/` folder there.

## Flows

### 1. Positioning flow

Run once, then revisit when evidence says your positioning is wrong.

```
setup-gtm → define-icp → value-prop → outcome-positioning → outcome-pricing
```

| Step | Skill | What you end up with |
|---|---|---|
| 1 | [`setup-gtm`](./skills/meta/setup-gtm/SKILL.md) | A Profile with your product, Product stage, and Sales motion |
| 2 | [`define-icp`](./skills/positioning/define-icp/SKILL.md) | Who has the urgent, important problem, their early adopters, which platform they spend time on, and the Lead stage question |
| 3 | [`value-prop`](./skills/positioning/value-prop/SKILL.md) | A one-sentence, ten-times-better Value proposition |
| 4 | [`outcome-positioning`](./skills/positioning/outcome-positioning/SKILL.md) | Growth or risk-reduction framing; show the work, context, integrations |
| 5 | [`outcome-pricing`](./skills/positioning/outcome-pricing/SKILL.md) | Platform fee plus usage pricing |

Steps 4 and 5 matter most for AI-native products; steps 1 to 3 are enough to start a Campaign.

### 2. Campaign loop

Repeat for every hypothesis you want to test.

```
plan-campaign → lead-magnet → social-post · landing-page · warm-outbound
      ↑                                            ↓
      │                                       gtm-review
      │                                            ↓
      │                                    [you publish]
      │                                            ↓
      │                       log-experiment · log-conversation
      │                                            ↓
      └──────────────────────────────────── gtm-retro
                                                   ├─ kept   → keep running
                                                   ├─ scaled → scale-with-paid
                                                   └─ killed → back to the positioning flow
```

| Step | Skill | What it does |
|---|---|---|
| 1 | [`plan-campaign`](./skills/demand/plan-campaign/SKILL.md) | Opens a Campaign: one researched hypothesis, a Target signal, a judge-by date |
| 2 | [`lead-magnet`](./skills/demand/lead-magnet/SKILL.md) | Outlines the one Lead magnet the Campaign tests, built from what already works and what your ICP asks |
| 3 | [`social-post`](./skills/demand/social-post/SKILL.md) | Problem-first posts that link to the Lead magnet, adapting Proven posts from your niche |
| 3 | [`landing-page`](./skills/demand/landing-page/SKILL.md) | Copy asking for name, email, and Lead stage, then a guided build in a free tool |
| 3 | `warm-outbound` ([#8](https://github.com/ObaidDev/gtm-playbook/issues/8)) | Messages to people who took the Lead magnet |
| 4 | `gtm-review` ([#18](https://github.com/ObaidDev/gtm-playbook/issues/18)) | Checks the Campaign's Artifacts before you publish |
| 5 | `log-experiment` ([#10](https://github.com/ObaidDev/gtm-playbook/issues/10)) | Records each trial (a post, a boost, an outbound batch) and its signal |
| 5 | `log-conversation` ([#9](https://github.com/ObaidDev/gtm-playbook/issues/9)) | Records each Customer conversation, optionally linked to the Campaign |
| 6 | `gtm-retro` ([#19](https://github.com/ObaidDev/gtm-playbook/issues/19)) | Judges the Campaign against its Target signal: kept, killed, or scaled |
| 7 | `scale-with-paid` ([#11](https://github.com/ObaidDev/gtm-playbook/issues/11)) | Promotes proven posts and retargets leads, for scaled Campaigns |

### Lost? Ask the router

`ask-gtm` ([#14](https://github.com/ObaidDev/gtm-playbook/issues/14)) reads your Workspace and tells you the next skill to run: it flags stale Artifacts, Campaigns due for retro, and conversations that should trigger a positioning revision.

### Always on

`find-out-asap` and `demand-acquisition` ([#15](https://github.com/ObaidDev/gtm-playbook/issues/15)) fire on their own when you drift into building in stealth or cold-emailing shared lead lists.

### Behind the workflow skills

[`interview`](./skills/meta/interview/SKILL.md) runs the round-based Interview every workflow skill holds with you before it writes, and [`research`](./skills/meta/research/SKILL.md) researches your market for a workflow skill (for example, the Proven posts `social-post` adapts and the Proven lead magnets `lead-magnet` builds on) and saves its notes in `gtm/research/`. You never call either yourself.

### Growing the playbook

`ingest-source` ([#16](https://github.com/ObaidDev/gtm-playbook/issues/16)) turns new learning material into distilled notes and suggests skills to create or update.
