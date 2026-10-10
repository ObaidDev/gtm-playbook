---
name: define-icp
description: "Define your ICP: interviews you about who has the urgent and important problem your product solves and which social platform they spend time on, then writes the ICP section of your Profile. Run after setup-gtm, and again when Customer conversations say your ICP is wrong."
disable-model-invocation: true
---

# Define ICP

Write the **ICP** section of the Founder's Profile at `gtm/profile.md`: who has the urgent and important problem the product solves, and which social platform they spend time on. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the ICP section.

## Why the ICP comes first

Every later Artifact (a Lead magnet, a post, an outbound message) is aimed at the ICP, so a vague ICP makes all of them vague. The test for an ICP is not "who could use this" but "who has a problem that is both **urgent** (it hurts now, they are already trying to fix it) and **important** (fixing it matters to their job or business)". Even a product that could serve everyone starts with the early adopters who feel the problem most. If the Founder worries that one competitor would leave too small a market, the ICP is probably defined too narrowly or around the wrong problem.

The platform follows from who the ICP is. Social feeds now show posts to whoever the feed predicts will find them useful, not only to followers, so a Founder with no followers can still reach the ICP, but only on the platform the ICP actually spends time on. As a default:

- **Meta** (Facebook, Instagram) for small and medium businesses
- **LinkedIn** for mid-market and enterprise buyers
- **X** for engineering teams and some technical verticals

Pick one platform to concentrate on, not a spread across all of them.

## Process

### 1. Check the prerequisite

Read `gtm/profile.md`. If it does not exist, follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md): **stop**, tell the Founder to run `/gtm-playbook:setup-gtm` first, and end there. Write nothing, create no file or folder, and do not interview them.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The Product section says what the product does and its Product stage; the current ICP section, if filled in, is what this run revises.
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: who confirmed the problem, who did not, and the words they used. When revising, note the ones dated after the ICP's `Last revised` date, and point out where they confirm or contradict the current ICP.
- Read whatever else describes the product and its buyers: a `README.md`, a landing page, docs.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

The interview below is copied from Matt Pocock's grilling skill (see [NOTICE.md](./NOTICE.md)). Here, "the user" is the Founder, and you only ask what is still open after step 2.

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

- **Who**: the role and the kind of company (size, industry, situation) that has the problem. Push for something specific enough to find these people on a platform; "small businesses" or "developers" is not an ICP.
- **Urgent and important problem**: the problem this ICP has that the product solves, why it is urgent now, and why it matters to them. If it is only nice to have, say so and recommend a narrower ICP for whom it is urgent.
- **Platform**: the one platform to concentrate on, decided after Who. Recommend the platform the defaults above point to; recommend another only when what you found shows this ICP gathers there.
- **Evidence** (only when Customer conversations exist): whether the conversations change Who or the problem. Recommend the change they support, quoting the Founder's prospects' own words.

Do not ask about the Value proposition, positioning, or pricing: the skills that own those sections do that.

### 4. Confirm, then write

Show the Founder the ICP section you are about to write, and, when revising, say what changes. Write once they confirm, or straight away if they already told you to write without confirming.

Replace the body of the ICP section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the ICP is set and what to run next: `/gtm-playbook:value-prop` when the Value proposition section is empty, otherwise whichever owned section is still empty, in the Profile's order. If the ICP changed on a revision, say that a filled-in Value proposition was written for the old ICP and may need revising with `/gtm-playbook:value-prop`.

Distilled from TK (TK Capital): *Best SaaS Marketing Strategy to get your first 100 Customers Without Cold DM's* and *How to Generate 1,000 B2B Leads for $0 Step by Step*.
