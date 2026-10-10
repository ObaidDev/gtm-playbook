---
name: outcome-pricing
description: "Price on outcomes, not seats: reads your Value proposition and Outcome positioning, interviews you about the unit of outcome you charge for, a platform fee with unlimited seats, the usage it includes, and the overage beyond it, challenging any per-seat price, then writes the Pricing section of your Profile. Run after outcome-positioning, and again when the Outcome positioning changes or Customer conversations push back on price."
disable-model-invocation: true
---

# Outcome pricing

Write the **Pricing** section of the Founder's Profile at `gtm/profile.md`: Outcome pricing, a platform fee with included usage plus usage overage, replacing per-seat pricing. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Pricing section.

## Why a platform fee plus usage

Software sold on productivity was priced by the seat: the more people using it, the more the customer paid. An AI-native product does the work itself, so the customer needs fewer people, and a per-seat price shrinks as the product succeeds. It also asks the wrong question: is the agent doing the work one seat, or ten?

Outcome pricing has three parts:

- **Platform fee.** A fixed monthly or yearly fee with unlimited seats. It is higher than a typical low-priced SaaS tool, because the product does part of the work a person would otherwise do: it is priced against a share of that labor budget plus the software budget, not against other tools in the category.
- **Included usage.** The fee includes a set number of units of usage, each one outcome the product delivers, like the minutes in a phone plan.
- **Overage.** Beyond the included usage, each extra unit is charged. The more the customer uses the product, the more outcomes they get and the more they pay, so the price grows with each customer's success instead of their headcount.

Hold every answer to these tests:

- **No per-seat price.** Seats are unlimited. If the Founder proposes a price per user, seat, or login, say it is per-seat pricing and recommend the platform fee it turns into.
- **Charged on the outcome.** The unit of usage is the outcome in the Outcome positioning, counted as the customer sees it (a changelog published, a ticket resolved, a lead booked), not an internal cost such as tokens or API calls.
- **Priced on the work done.** The platform fee is set against what the work would cost the ICP without the product, and is consistent with the Value proposition's measure. A fee as low as a seat-priced tool is a sign it is priced as a tool, not as the work.
- **Room to grow.** The included usage covers a typical customer starting out, so a customer who gets more outcomes reaches the overage, and the overage price per unit is above what one unit costs the Founder to deliver. As model costs fall, the Founder can lower the overage and stay profitable.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In any case below, **stop** at the first that applies and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first.
- If the Value proposition section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:value-prop` first.
- If the Outcome positioning section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:outcome-positioning` first. The unit of usage is the outcome that section names, so the price cannot be written without one, even when the Founder offers a price.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The Outcome positioning section names the outcome and the work the product gets done; the Value proposition section names the alternatives and the measure; the ICP section names who pays; the Product section gives the Product stage and Sales motion; the current Pricing, if filled in, is what this run revises. Note whether the Value proposition's or the Outcome positioning's `Last revised` date is later than the Pricing's: if so, the price was set for an older claim. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: price objections, what prospects pay today for the alternatives, and the words they used. When revising, note the ones dated after the Pricing's `Last revised` date.
- Read whatever else describes the product's current pricing or its costs: a `README.md`, a pricing page, billing code, the code itself.
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
> Each round the user answers reshapes the tree: settled decisions push the frontier outward and unblock questions that depended on them. Recompute the frontier and ask the next round. A question whose answer depends on another question still open in this round belongs to a _later_ round, not this one.
>
> Finding _facts_ is your job, never the user's. When a frontier question needs a fact from the environment (filesystem, tools, etc.), dispatch a sub-agent to find it; don't ask the user for anything you could look up yourself. Don't block on it: a running exploration is an unsettled prerequisite, so only the questions downstream of it wait for the sub-agent to report; ask the rest of the frontier now. The _decisions_ are the user's: put each to them and wait.
>
> The session is done when the frontier is empty: every branch of the design tree visited, nothing left silently assumed. Do not act on it until the user confirms you have reached a shared understanding.

Give every question 2 to 4 lettered options drafted from what you found in step 2, mark the one you recommend, and tell the Founder they can answer with something else.

The design tree for this skill grows from the root branches below. Each has a **done when** test: keep drilling into the decisions under a branch, round after round, until its test is met. The sub-decisions listed are where to start, not the whole tree; there is no limit on rounds. When revising, the Pricing section's Open questions and any field it lacks are open branches: ask them in the first round (see [STATE.md](../../meta/setup-gtm/STATE.md)).

- **Unit of usage**: the one outcome the product charges for, counted as the customer sees it. Done when a customer could count it from their own records, and you know what does not count (a failed or redone unit). Start from: the outcome, how it is counted, and what is excluded. Recommend the unit the Outcome positioning's work points to. If the Founder offers tokens or API calls, say they are a cost to the Founder, not an outcome the customer sees, and recommend the outcome they stand for.
- **Platform fee**: the fixed fee, its billing period, and unlimited seats, decided after Unit of usage. Done when the fee is set against a named cost the ICP pays today for the same work. Start from: what the work costs without the product (people, tools, an agency), the billing period, and how the Sales motion sells it. Recommend a fee set against what the work costs the ICP without the product (the Value proposition's alternatives and measure). If the Founder offers a per-seat price, say it is per-seat pricing and recommend the platform fee it turns into.
- **Included usage**: how many units the platform fee includes, decided after Unit of usage and Platform fee. Done when you can say how many units a typical customer uses in their first months and when a growing one reaches the overage. Recommend what a typical customer uses in their first months, so growing customers reach the overage.
- **Overage**: the price per unit beyond the included usage, decided after Included usage. Done when the price is at or above the platform fee's price per included unit and above what one unit costs to deliver. Start from: what one unit costs to deliver. Recommend a price at or above the platform fee's price per included unit, and above what one unit costs to deliver.
- **Evidence** (only when Customer conversations exist): whether the conversations show price objections or what prospects pay today. Recommend the change they support, quoting the prospects' own words.

Do not ask about the ICP, the Value proposition, or the Outcome positioning: the skills that own those sections do that. If the interview shows the Outcome positioning is wrong (for example, there is no outcome a customer could count), name `/gtm-playbook:outcome-positioning` rather than changing it here.

If the Founder says to write now, or told you to take their answers as final, stop interviewing: record every branch still open as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes, and go to step 4.

### 4. Confirm, then write

Show the Founder the Pricing section you are about to write, and, when revising, say what changes. Write once they confirm, or straight away if they already told you to write without confirming. A Founder's instruction to write without confirming does not waive the tests above: if their price is per seat, say so in your reply and write the platform fee, included usage, and overage it turns into, keeping the per-seat figure out of the field values.

Replace the body of the Pricing section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Pricing is set and what to run next: whichever owned section is still empty, in the Profile's order, or, when every section is filled, that the Profile is ready to plan a Campaign. If the Pricing changed on a revision, say that Artifacts quoting the old price may now be stale.
