---
name: lead-magnet
description: "Outline your Campaign's Lead magnet: reads your ICP, Value proposition, and the planned Campaign, researches what already works on that problem and what the ICP asks about it, interviews you about the checklist or guide that solves one specific problem with a distinct point of view, challenges anything generic or salesy, then saves the outline in the Campaign's folder. Run after plan-campaign, once per Campaign."
disable-model-invocation: true
---

# Lead magnet

Outline the one **Lead magnet** of a planned Campaign and save it as `gtm/campaigns/<slug>/lead-magnet.md`. Read [STATE.md](../../meta/setup-gtm/STATE.md) first: it gives the format and the rules for the `gtm/` folder. Never write the Profile, `campaign.md`, or any other Artifact.

## What makes a good Lead magnet

- **A checklist or guide** that **solves one specific problem** of the ICP.
- **A distinct point of view** on that problem, not the advice the ICP already hears everywhere.
- **Educational.** It teaches; it does not pitch the product.

Posts link to it on a landing page, never "comment below": buyers with budget lurk and do not comment, but they take what solves their problem. Taking it shows they have that problem, and warm outbound opens from it.

## Start from what works

Never outline a Lead magnet from a blank page. Look at what already works on the problem, and turn it into something more valuable for the ICP:

- **Proven lead magnets.** Adapt the structure of a Proven lead magnet, and fill its gaps with the Campaign's Point of view. Never copy it: a Lead magnet that says what the Proven ones already say has no distinct point of view. A checklist or guide counts as proven only on evidence the ICP gives (they recommend it, share it, or ask for it), never on its author's own claims.
- **The ICP's own questions.** Build the Outline from what the ICP asks about the problem, in their words.
- **Checked facts.** Teach only what holds up against primary sources.

## Process

1. **Check.** Read `gtm/profile.md` and follow the missing-prerequisite rule in STATE.md. Stop without writing or interviewing if the Profile is missing (`/gtm-playbook:setup-gtm`), the ICP is a placeholder (`/gtm-playbook:define-icp`), the Value proposition is a placeholder (`/gtm-playbook:value-prop`), or no Campaign is `planned` without a `lead-magnet.md` or `live` (`/gtm-playbook:plan-campaign`). A Campaign has exactly one Lead magnet. A `live` Campaign's can be rewritten on the same Problem and Point of view: visitors who did not download never read it, only the landing page, so say so if that is the Founder's evidence. To test another Problem or Point of view, plan a new Campaign. If several Campaigns qualify and the Founder named none, ask which.

2. **Explore.** Finding facts is your job. Take Form, Problem, and Point of view from the Campaign's Lead magnet line and the slice of the ICP from its Hypothesis; do not decide them again. Read the whole Profile, `gtm/conversations/` for the ICP's own words, and anything else on the problem. Note every `(unconfirmed)` field you build on.

   Then call the Skill tool with `gtm-playbook:research`, every time, on the Campaign's Problem: the Proven lead magnets the ICP already gets, the questions the ICP asks about it in open communities, and the facts the Outline will teach. Tell it the primary source is the checklist or guide itself and the ICP's own posts, never an article that rounds them up, and for facts, the source that owns them. Tell the Founder you are researching, and wait for the findings before the Interview: every question in it is about the Outline.

3. **Interview.** Call the Skill tool with `gtm-playbook:interview`, on the Outline: every item of the checklist or section of the guide, held to the tests above, each item built from the research findings. A different problem or point of view is a different hypothesis: send the Founder to `/gtm-playbook:plan-campaign`.

   If the findings show the Point of view is what the Proven lead magnets already say, tell the Founder in the first round, with the evidence, and recommend planning a new Campaign with `/gtm-playbook:plan-campaign`. Never change the Point of view yourself. If the Founder carries on, write nothing about it in the file. If the research finds no Proven lead magnet and few ICP questions, say so and build the Outline from the Profile and the conversations. Never ask the Founder for examples, though use any they offer. If the Founder says to write now, the Outline can never be left open.

4. **Confirm, then write.** Title it after the one problem it solves. Show the draft in a message that asks nothing else, and write only once the Founder confirms it (or already told you to write without confirming). If they reject the title, record it as an Open question. Check again that the Campaign is still `planned` with no `lead-magnet.md`, or still `live`, then write it in the STATE.md format.

5. **Done.** Say where the file is, that the Founder writes the Lead magnet out from the outline before the Campaign's publish-by date, and that the other Artifacts on its **Artifacts needed** list come next. Name any `(unconfirmed)` field it builds on and the skill that settles it. After a rewrite, say that the landing page still promises the old version: `/gtm-playbook:landing-page` rewrites it to follow.
