---
name: lead-magnet
description: "Outline your Campaign's Lead magnet: reads your ICP, Value proposition, and the planned Campaign, interviews you about the checklist or guide that solves one specific problem with a distinct point of view, challenges anything generic or salesy, then saves the outline in the Campaign's folder. Run after plan-campaign, once per Campaign."
disable-model-invocation: true
---

# Lead magnet

Outline the one **Lead magnet** of a planned Campaign: an educational checklist or guide with a distinct point of view that solves one specific problem of the ICP. This skill writes it as an Artifact, `lead-magnet.md`, in the Campaign's folder under `gtm/campaigns/`. It reads the Profile and the Campaign's definition and never writes either.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the Artifact convention and the exact format of a Lead magnet.

## Why one problem and a distinct point of view

The Campaign's posts link to a landing page where a prospect trades their name, email, and Lead stage answer for the Lead magnet. Buyers with budget rarely comment on posts, but they do take something that solves a problem they have. Taking it tells the Founder they have that problem, and warm outbound later opens from it.

Hold every Lead magnet to these tests:

- **One specific problem.** The one problem named on the Campaign's Lead magnet line. A Lead magnet that covers a whole topic tells the Founder nothing about who took it.
- **A distinct point of view.** It says something about the problem the ICP does not already hear everywhere. Generic advice is not a point of view.
- **Educational.** It teaches the ICP how to deal with the problem. It is not a pitch for the product.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. The Lead magnet solves a problem of the ICP.
- If the Value proposition section still holds its placeholder, tell the Founder to run `/gtm-playbook:value-prop` first. Every Artifact of a Campaign builds on that claim.

If both are missing, name `define-icp` first: `value-prop` needs it.

Then read every `campaign.md` under `gtm/campaigns/`. A Campaign can take a Lead magnet only if its `State:` is `planned` and its folder holds no `lead-magnet.md`. Stop the same way in each case below.

- If no Campaign is planned, tell the Founder to run `/gtm-playbook:plan-campaign` first. A Lead magnet without a hypothesis is posting and hoping.
- If the Campaign the Founder named, or every planned Campaign, already has a Lead magnet, refuse: a Campaign is tested with exactly one Lead magnet. To test another one, the Founder plans a new Campaign with `/gtm-playbook:plan-campaign`.

If more than one Campaign can take a Lead magnet and the Founder did not name one, ask which before the Interview.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the Campaign's `campaign.md`. Its **Hypothesis** says which slice of the ICP the Lead magnet is for, and its **Artifacts needed** list gives the Lead magnet's form, the one problem it solves, and its point of view. Build on them; do not decide them again. If that line is `(unconfirmed)`, build on its draft and tell the Founder.
- Read the whole Profile, and note every `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists: the ICP's own words for the problem are material for the outline and the title.
- Read whatever else shows what the Founder knows about the problem: a `README.md`, docs, a landing page.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 2.

Give every question 2 to 4 lettered options drafted from what you found in step 2, mark the one you recommend, and tell the Founder they can answer with something else.

Hold each answer to its branch's **done when** test before you count the branch as settled. An answer that fails the test settles nothing: say why in the next round and ask again with a sharper recommendation. Never show a draft of the Lead magnet while the Interview is running.

The design tree grows from the root branches below. Keep drilling into each until its **done when** test is met; there is no limit on rounds.

- **Outline**: the items of the checklist or the sections of the guide. Done when every item serves the one problem, the point of view runs through the items, and each item teaches rather than pitches the product. Recommend a full outline drafted from what you found, and ask the Founder what to cut, add, or reorder.
- **Title**: the title the ICP sees in a post and on the landing page, decided after Outline. Done when it names the one problem and the Founder would post it unchanged.

If the Founder wants a different problem or point of view than the Campaign's, that is a different hypothesis: name `/gtm-playbook:plan-campaign` and do not change it here. Do not ask about the Profile or the Campaign's other fields, and do not draft the posts, the landing page, or the warm outbound: they are separate Artifacts.

If the Founder says to write now, stop interviewing. The Outline can never be left open: if it is unsettled, do not write the Lead magnet; say so and ask it again. Record an unsettled Title as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Show the Founder the Lead magnet you are about to write, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an Interview question is never a confirmation.

Check again that the Campaign is still `planned` and its folder holds no `lead-magnet.md`: never overwrite an existing Lead magnet. Create `gtm/campaigns/<slug>/lead-magnet.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else: not the Profile, not `campaign.md`, not any other Artifact.

### 5. Done

Tell the Founder where the Lead magnet is, and that they write it out from the outline before the Campaign's publish-by date. Say what comes next: the other Artifacts on the Campaign's **Artifacts needed** list. If the Lead magnet builds on an `(unconfirmed)` field, name it and the skill that settles it.
