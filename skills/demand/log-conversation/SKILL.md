---
name: log-conversation
description: "Record a Customer conversation: whether the prospect confirmed the problem, how your Value proposition landed, their objections and their own words, linked to the Campaign it came from if any, then flags where it contradicts your ICP or Value proposition and names the skill to revise it. Run after every conversation with a prospect or customer."
disable-model-invocation: true
---

# Log conversation

Record one **Customer conversation** in its own file in `gtm/conversations/`. This skill writes only new conversation files: it reads the Profile and the Campaigns, and never writes either (ADR-0002). When a conversation contradicts the ICP or the Value proposition, it says so and names the skill that owns that section; the owning skill reads the conversation when the Founder runs it.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of a conversation file.

## Why record every conversation

Customer conversations are how the Founder finds out, as early as possible, whether the product is worth building: whether the problem is real, whether the ICP is real, whether the Value proposition resonates, whether the prospect has budget, and what the objections are. The benchmark is 100 Customer conversations to a first customer, at every Product stage and for a product-led product too. A conversation that is not written down cannot refine the ICP or the Value proposition later.

Hold every record to these tests:

- **What happened, not what was hoped.** A problem the prospect did not confirm is `not confirmed`, and a claim that did not land `did not resonate`, even when the Founder would rather hear otherwise.
- **Their words, not a summary.** Quote what the prospect said as the Founder gives it. Never invent or polish a quote.
- **Checked against the Profile.** Compare the conversation with the ICP and the Value proposition, and flag every contradiction.

## Process

### 1. Check the prerequisite

Read `gtm/profile.md`. If it does not exist, follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md): **stop**, tell the Founder to run `/gtm-playbook:setup-gtm` first, and end there. Write nothing, create no file or folder, and do not interview them.

An ICP or a Value proposition that still holds its placeholder does not stop this skill: a conversation is evidence for writing them. There is just nothing to contradict yet.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile: the ICP (who has the problem, the problem, the Early adopters, and the Lead stage question) and the Value proposition (the claim and the alternatives) are what the conversation is checked against. Note any `(unconfirmed)` field.
- Read every `campaign.md` under `gtm/campaigns/`, for the Campaign the conversation may have come from and what its **Builds on unconfirmed** line says its conversations should find out.
- Read the existing files in `gtm/conversations/`, if any, to count them and to see whether this prospect was recorded before.
- Read the notes, transcript, or account of the conversation the Founder gave in the message that invoked this skill. Draft every field from it.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the conversation's Who, Date, Campaign (which one it came from, or none: the link is optional), Lead stage, Problem, Value proposition, Budget, Objections, and Their words, held to the tests above, with each recommended answer drafted from what the Founder gave. Recommend the Campaign whose Hypothesis the prospect fits, if any.

The Interview also settles **Contradicts the Profile**: recommend each contradiction you found between the conversation and the ICP or the Value proposition, with the evidence, and say when the conversation answers an `(unconfirmed)` field instead. A conversation the Founder has not had yet is not recorded: ask them to come back after it.

Do not ask how to change the ICP or the Value proposition: `/gtm-playbook:define-icp` and `/gtm-playbook:value-prop` own them, and decide that when the Founder runs them. If the Founder says to write now, record what was not discussed as `Not discussed.`, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Show the Founder the conversation file you are about to write, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they told you to write without confirming. An answer to an Interview question is never a confirmation.

Create `gtm/conversations/<YYYY-MM-DD>-<who>.md`, and the folder if it does not exist, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else: not the Profile, not a `campaign.md`, not any other conversation.

### 5. Done

Tell the Founder where the conversation is and how many Customer conversations are now recorded, against the benchmark of 100. For each contradiction, name the section and the skill to run, `/gtm-playbook:define-icp` or `/gtm-playbook:value-prop`, which reads every conversation when revising. If the conversation answers an `(unconfirmed)` field, name the field and the skill that settles it. Never edit the Profile yourself.
