---
name: value-prop
description: "Write your Value proposition: reads your ICP, interviews you about the alternatives they use today and how your product is ten times better at solving their problem, challenges any claim that is not, then writes the Value proposition section of your Profile. Run after define-icp, and again when the ICP changes or Customer conversations say the claim is not landing."
disable-model-invocation: true
---

# Value proposition

Write the **Value proposition** section of the Founder's Profile at `gtm/profile.md`: one sentence saying how the product is ten times better than the alternatives at solving the ICP's problem. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Value proposition section.

## Why ten times better

The Value proposition is the one claim every later Artifact repeats: posts about the ICP's problem weave it in, and Customer conversations test whether it lands. A claim that is only somewhat better gives the ICP no reason to switch from what they already do, so the bar is **ten times better** on a measure the ICP cares about, at solving the urgent and important problem in the ICP section.

Hold every claim to these tests:

- **Against a real alternative.** Name what the ICP does today instead: a competitor, a general tool (for an AI-native product, a general model the ICP can already use for a small monthly fee), a spreadsheet, a hire, or doing nothing. "Better than the competition" with no named alternative is not a claim.
- **On one measure.** Time, cost, error rate, reach, or another number the ICP would feel. Ten times faster at one thing beats "better" at everything.
- **Plausible.** The Founder can say why it is ten times better (what the product does that the alternative cannot), and a prospect could check it. If the honest gain is two or three times, say so. Recommend a narrower ICP, a different alternative, or a different measure where the gain really is ten times, rather than writing the inflated claim.
- **About the ICP's problem.** It solves the problem the ICP section names, not a feature the Founder is proud of.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In either case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. A Value proposition is a claim about the ICP's problem, so it cannot be written without one, even when the Founder offers a sentence.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The ICP section says who has the problem and what it is; the Product section says what the product does; the current Value proposition, if filled in, is what this run revises. Note whether the ICP's `Last revised` date is later than the Value proposition's: if so, the claim was written for an older ICP.
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: which alternatives prospects named, whether the claim landed, and the words they used. When revising, note the ones dated after the Value proposition's `Last revised` date.
- Read whatever else describes the product and its competitors: a `README.md`, a landing page, docs.
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

- **Alternatives**: what the ICP uses today to solve the problem. Recommend the ones you found in step 2; always consider doing nothing and, for an AI-native product, a general model.
- **Measure**: the one measure on which the product is ten times better than those alternatives, decided after Alternatives. Recommend the measure the ICP's problem points to.
- **Ten times check**: whether the gain on that measure is plausibly ten times, and why. If it is not, say so plainly and recommend a narrower ICP, a different alternative, or a different measure; do not accept the claim because the Founder repeats it. A narrower ICP is a decision for `/gtm-playbook:define-icp`, so name that skill rather than changing the ICP here.
- **Sentence**: the one-sentence Value proposition, decided last. Recommend a draft that names the ICP's problem, the gain, and the measure, in the ICP's own words where Customer conversations give them.
- **Evidence** (only when Customer conversations exist): whether the conversations show the claim landing or not. Recommend the change they support, quoting the prospects' own words.

Do not ask about the ICP, outcome positioning, or pricing: the skills that own those sections do that.

### 4. Confirm, then write

Show the Founder the Value proposition section you are about to write, and, when revising, say what changes. Write once they confirm, or straight away if they already told you to write without confirming. A Founder's instruction to write without confirming does not waive the ten times check: if the claim fails it, say why in your reply and write the honest claim, not the inflated one.

Replace the body of the Value proposition section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Value proposition is set and what to run next: whichever owned section is still empty, in the Profile's order. If the Value proposition changed on a revision, say that Artifacts built on the old claim may now be stale.
