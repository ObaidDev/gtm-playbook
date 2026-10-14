---
name: outcome-positioning
description: "Sell an outcome, not productivity: reads your ICP and Value proposition, interviews you about whether you sell growth or risk reduction, the work your product gets done, the context and harness that beat a general model, and your integrations (including MCP and human handoffs), then writes the Outcome positioning section of your Profile. Run after value-prop, and again when the Value proposition changes or Customer conversations ask what the ROI is."
disable-model-invocation: true
---

# Outcome positioning

Write the **Outcome positioning** section of the Founder's Profile at `gtm/profile.md`: the outcome the product is sold on (growth or risk reduction) and what the Founder shows to prove it. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Outcome positioning section.

## Why outcomes, not productivity

Software sold by the seat was sold on productivity: your people do the work faster, so your business does better, so pay for more seats. An AI-native product does the work itself, and buyers who once tried AI products because they were AI now ask what the return is. So what the Founder sells moves closer to the buyer's profit and loss: the product gets the work done, and the business **grows** (more revenue, customers, or pipeline) or **reduces risk** (less churn, fewer errors, less exposure). Productivity is still a fine measure for the Value proposition; the Outcome positioning says what that gain does for the business.

What the Founder shows changes with it. Demos of workflows, features, and customisation sold seats: they showed someone clicking buttons. A buyer of outcomes wants fewer people using software, not more, so the Founder shows three things instead:

- **The work getting done.** The finished output for one slice of the business, as it lands, not the screens a user would click through to produce it.
- **Context and harness.** Features are easy to build now, so they no longer set a product apart. The question every buyer of an AI-native product asks is why it is ten times better than using a general model they already pay a small monthly fee for. The answer is what sits around the model: the data and context the product has, and the workflows and harness around the model that turn it into the outcome.
- **Integrations.** Not only syncing data over an API, but how the product plugs in: an MCP server, APIs into the systems the ICP already runs, and how it hands work to and from the humans working alongside it.

Hold every answer to these tests:

- **Growth or risk, not time saved.** "Saves your team ten hours a week" is productivity. Ask what those hours turn into: deals closed, customers kept, errors avoided. Pick the one of growth or risk reduction the ICP's urgent and important problem points to.
- **Consistent with the Value proposition.** The outcome is what the Value proposition's ten times gain does for the ICP's business. It does not make a new claim.
- **Shown, not told.** Each of the three things to show is something a prospect could see in a demo, on a landing page, or in a post.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In any case below, **stop** at the first that applies and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first.
- If the Value proposition section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:value-prop` first. The outcome is what the Value proposition's gain does for the business, so it cannot be written without one, even when the Founder offers a framing.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The ICP section names the problem; the Value proposition section names the alternatives, the measure, and the claim; the Product section says what the product does and its Product stage; the current Outcome positioning, if filled in, is what this run revises. Note whether the ICP's or the Value proposition's `Last revised` date is later than the Outcome positioning's: if so, the framing was written for an older claim. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: whether prospects asked about ROI, which outcomes they cared about, and the words they used. When revising, note the ones dated after the Outcome positioning's `Last revised` date.
- Read whatever else describes the product, its data, and its integrations: a `README.md`, a landing page, docs, the code itself.
- Note any answers the Founder already gave in the message that invoked this skill.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the Outcome positioning's Outcome (growth or risk reduction, and the result on the ICP's business), Show the work, Context and harness, and Integrations, on the current section's Open questions and any field it lacks (see [STATE.md](../../meta/setup-gtm/STATE.md)), and, when Customer conversations exist, on whether prospects asked what the ROI is and which outcome they cared about, held to the tests above.

Do not ask about the ICP, the Value proposition, or Pricing: `/gtm-playbook:define-icp`, `/gtm-playbook:value-prop`, and `/gtm-playbook:outcome-pricing` own those sections, so if the Value proposition looks wrong, name `/gtm-playbook:value-prop` rather than changing it here. If the Founder says to write now, or told you to take their answers as final, record every open field as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Once the Interview is done, or the Founder said to write now, show the Founder the Outcome positioning section you are about to write, in a message that asks nothing else, and, when revising, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft. A Founder's instruction to write without confirming does not waive the tests above: if their framing is productivity, say so in your reply and write the growth or risk outcome it leads to.

Replace the body of the Outcome positioning section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Outcome positioning is set and what to run next: whichever owned section is still empty, in the Profile's order. If the Outcome positioning changed on a revision, say that Artifacts built on the old framing may now be stale.
