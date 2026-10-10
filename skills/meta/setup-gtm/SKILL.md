---
name: setup-gtm
description: "Create or update your GTM Profile: interviews you about your product and Product stage, then writes the Profile skeleton every other gtm-playbook skill reads. Run once per Workspace before the other skills."
disable-model-invocation: true
---

# Setup GTM

Create the Founder's Profile at `gtm/profile.md` in the Workspace root, or update it if it already exists. The Profile is the one file every other skill in this plugin reads; this skill owns only its **Product** section and creates the empty sections the other skills own.

Read [STATE.md](./STATE.md) before writing anything: it is the contract for the `gtm/` folder and the exact Profile format.

## Process

### 1. Explore

Look at the Workspace before asking anything. Finding facts is your job, never the Founder's.

- Does `gtm/profile.md` exist? If so, read it in full: this is a **re-run**.
- Read whatever describes the product: a `README.md`, a landing page, a pitch deck, docs. Use it to draft recommended answers.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 2. Interview in rounds

The interview below is copied from Matt Pocock's grilling skill (see [NOTICE.md](./NOTICE.md)). Here, "the user" is the Founder, and you only ask what is still open after step 1.

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

- **Product**: what the product does and for whom, in one or two sentences. Recommend a sentence drafted from what you found in the Workspace (or, on a re-run, the current one).
- **Product stage**: one of `pre-product` (nothing a customer can use yet), `beta` (people can use it, nobody pays yet), or `revenue` (at least one paying customer). Recommend the stage the evidence points to; on a re-run, recommend the current stage unless the Founder said it changed.

Do not ask about any other Profile section: the skills that own them do that.

### 3. Confirm, then write

Show the Founder the Product section you are about to write, and, on a re-run, say what changes. Write once they confirm, or straight away if they already told you to write without confirming.

- **New Profile**: create `gtm/profile.md` from the template in [STATE.md](./STATE.md): the Product section filled in, and every other owned section present but empty. Every section's "Last revised" date is today.
- **Re-run**: replace the body of the Product section only, and set its "Last revised" to today only if its content changed. Leave every other section exactly as it is, byte for byte, including its date. If a section the template lists is missing, add it empty with today's date; never remove a section.

Never write any other file in `gtm/`: Campaigns, Customer conversations, and the Experiment log belong to other skills.

### 4. Done

Tell the Founder the Profile is ready and what to run next: `/gtm-playbook:define-icp` when the ICP section is empty, otherwise whichever owned section is still empty, in the template's order.
