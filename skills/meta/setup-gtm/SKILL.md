---
name: setup-gtm
description: "Create or update your GTM Profile: interviews you about your product, Product stage, and Sales motion, then writes the Profile skeleton every other gtm-playbook skill reads. Run once per Workspace before the other skills."
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

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 1.

Give every question 2 to 4 lettered options drafted from what you found in step 1, mark the one you recommend, and tell the Founder they can answer with something else.

Hold each answer to its branch's **done when** test before you count the branch as settled. An answer that fails the test settles nothing: say why in the next round and ask again with a sharper recommendation, instead of accepting it or offering a weaker claim as one of the options. Never show a draft of the section while the interview is running, and never park a branch whose test is unmet as an Open question: Open questions are only for when the Founder says to write now.

The design tree for this skill grows from the root branches below. Each has a **done when** test: keep drilling into the decisions under a branch, round after round, until its test is met. The sub-decisions listed are where to start, not the whole tree; there is no limit on rounds. On a re-run, the Product section's Open questions and any field it lacks are open branches: ask them in the first round (see [STATE.md](./STATE.md)).

- **Product**: what the product does and for whom, in one or two sentences. Done when a stranger could say what job it does, for whom, and what they used before it. Start from: the job it does, who uses it (and who pays, if not the same person), what it replaces, and how it is delivered (web app, API, plugin, service). Recommend a sentence drafted from what you found in the Workspace (or, on a re-run, the current one).
- **Product stage**: one of `pre-product` (nothing a customer can use yet), `beta` (people can use it, nobody pays yet), or `revenue` (at least one paying customer). Done when the stage rests on evidence, not on a feeling. Start from: what a customer can use today, how many use it, and whether anyone pays. Recommend the stage the evidence points to; on a re-run, recommend the current stage unless the Founder said it changed.
- **Sales motion**: `product-led` (a customer signs up and pays without talking to the Founder) or `sales-led` (a call or demo comes before they pay). Done when you know how the next customer will start paying. Start from: whether there is a self-serve signup, whether someone can pay without a conversation, and what the price level suggests. Recommend what the Workspace shows: a signup or free trial points to product-led, "book a demo" or "contact sales" to sales-led.

Do not ask about any other Profile section: the skills that own them do that.

If the Founder says to write now, or told you to take their answers as final, stop interviewing: record every branch still open as an Open question, as [STATE.md](./STATE.md) describes, and go to step 3.

### 3. Confirm, then write

Once the frontier is empty, or the Founder said to write now, show the Founder the Product section you are about to write, in a message that asks nothing else, and, on a re-run, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft.

- **New Profile**: create `gtm/profile.md` from the template in [STATE.md](./STATE.md): the Product section filled in (with its Open questions, if any), and every other owned section present but empty. Every section's "Last revised" date is today.
- **Re-run**: replace the body of the Product section only, and set its "Last revised" to today only if its content changed. Leave every other section exactly as it is, byte for byte, including its date. If a section the template lists is missing, add it empty with today's date; never remove a section.

Never write any other file in `gtm/`: Campaigns, Customer conversations, and the Experiment log belong to other skills.

### 4. Done

Tell the Founder the Profile is ready and what to run next: `/gtm-playbook:define-icp` when the ICP section is empty, otherwise whichever owned section is still empty, in the template's order.
