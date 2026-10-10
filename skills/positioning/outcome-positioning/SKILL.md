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
- **Context and harness.** Features are easy to build now, so they no longer set a product apart. The question every buyer of an AI-native product asks is why it is ten times better than using a general model they already pay a small monthly fee for. The answer is what sits around the model: the data and context the product has, and the harness (prompts, tools, checks, workflows) that turns the model into the outcome.
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

- Read the whole Profile. The ICP section names the problem; the Value proposition section names the alternatives, the measure, and the claim; the Product section says what the product does and its Product stage; the current Outcome positioning, if filled in, is what this run revises. Note whether the ICP's or the Value proposition's `Last revised` date is later than the Outcome positioning's: if so, the framing was written for an older claim.
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: whether prospects asked about ROI, which outcomes they cared about, and the words they used. When revising, note the ones dated after the Outcome positioning's `Last revised` date.
- Read whatever else describes the product, its data, and its integrations: a `README.md`, a landing page, docs, the code itself.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

In the interview below, "the user" is the Founder, and you only ask what is still open after step 2.

> Interview the user relentlessly until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.
>
> Work the tree in **rounds**. The **frontier** is every decision whose prerequisites are already settled: the questions you can ask _now_ without guessing at answers you haven't heard yet. Ask the whole frontier in one round: number each question and give your recommended answer. Then wait for the user's answers before the next round.
>
> Format a round like so:
>
> ```
> ❓ **Q1** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>
>
> ➡️ <your recommended answer>
>
> ---
>
> ❓ **Q2** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>
>
> ➡️ <your recommended answer>
> ```
>
> Word each question so "yes" accepts your recommended answer.
>
> Each round the user answers reshapes the tree: settled decisions push the frontier outward and unblock questions that depended on them. Recompute the frontier and ask the next round. A question whose answer depends on another question still open in this round belongs to a _later_ round, not this one.
>
> Finding _facts_ is your job, never the user's. When a frontier question needs a fact from the environment (filesystem, tools, etc.), dispatch a sub-agent to find it; don't ask the user for anything you could look up yourself. Don't block on it: a running exploration is an unsettled prerequisite, so only the questions downstream of it wait for the sub-agent to report; ask the rest of the frontier now. The _decisions_ are the user's: put each to them and wait.
>
> The session is done when the frontier is empty: every branch of the design tree visited, nothing left silently assumed. Do not act on it until the user confirms you have reached a shared understanding.

The design tree for this skill holds only these questions:

- **Outcome**: growth or risk reduction, and the one result on the ICP's business it names. Recommend the one the ICP's problem and the Value proposition's measure point to. If the Founder offers time saved or "more productive", say it is productivity and recommend what that time turns into.
- **Show the work**: the work getting done that a demo or page shows, decided after Outcome. Recommend the finished output for one slice of the ICP's business, and steer away from workflow walkthroughs and feature tours.
- **Context and harness**: why the product is ten times better at this outcome than the ICP using a general model themselves, decided after Outcome. Recommend the data, context, and harness you found in step 2. If the product is not AI-native, recommend writing `Not AI-native.` and saying what it has that the Value proposition's alternatives lack.
- **Integrations**: how the product plugs into the ICP's work: MCP, APIs into the systems they already run, and handoffs to and from the humans alongside it. Recommend the ones you found in step 2, and name the human handoff even when there is no MCP server yet.
- **Evidence** (only when Customer conversations exist): whether the conversations show prospects asking about ROI, and which outcome they cared about. Recommend the change they support, quoting the prospects' own words.

Do not ask about the ICP, the Value proposition, or pricing: the skills that own those sections do that. If the interview shows the Value proposition is wrong (for example, its measure is not one the outcome follows from), name `/gtm-playbook:value-prop` rather than changing it here.

### 4. Confirm, then write

Show the Founder the Outcome positioning section you are about to write, and, when revising, say what changes. Write once they confirm, or straight away if they already told you to write without confirming. A Founder's instruction to write without confirming does not waive the tests above: if their framing is productivity, say so in your reply and write the growth or risk outcome it leads to.

Replace the body of the Outcome positioning section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Outcome positioning is set and what to run next: whichever owned section is still empty, in the Profile's order. If the Outcome positioning changed on a revision, say that Artifacts built on the old framing may now be stale.
