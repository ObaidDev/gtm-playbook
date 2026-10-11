---
name: lead-magnet
description: "Outline your Campaign's Lead magnet: reads your ICP, Value proposition, and the planned Campaign, interviews you about the checklist or guide that solves one specific problem with a distinct point of view, challenges anything generic or salesy, then saves the outline in the Campaign's folder. Run after plan-campaign, once per Campaign."
disable-model-invocation: true
---

# Lead magnet

Outline the one **Lead magnet** of a planned Campaign: a checklist or guide with a distinct point of view that solves one specific problem of the ICP, and that a prospect trades their name, email, and Lead stage answer for. This skill writes it as an Artifact, `lead-magnet.md`, in the Campaign's folder under `gtm/campaigns/`. It reads the Profile and the Campaign's definition and never writes either.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the Artifact convention and the exact format of a Lead magnet.

## Why a distinct point of view

The Lead magnet is what the Campaign's posts offer and what its landing page trades for contact details, so it decides who becomes a lead. Generic advice the ICP can get from any blog or a general model earns downloads from people who collect anything free, not from buyers. A checklist or guide that solves one specific problem, from a point of view the ICP has not heard, earns the download from people who have that problem, and the download itself tells the Founder so: warm outbound later opens from exactly that problem.

Hold every Lead magnet to these tests:

- **One specific problem.** The problem named on the Campaign's Lead magnet line, which is part of the ICP's urgent and important problem. Someone who downloads it has told the Founder they have that problem. A Lead magnet that covers everything about a topic tells the Founder nothing about who took it.
- **A distinct point of view.** One sentence a reader could disagree with: what the ICP usually hears or does about this problem, and why the Founder says otherwise. If no one would argue with it, it is not a point of view.
- **Useful without the product.** A reader can act on it the day they read it, with what they already have. It teaches; it does not pitch. The product appears at most once, in the last step, as the faster way to do what the Lead magnet just taught.
- **Worth contact details.** A busy member of the ICP would give their name, email, and Lead stage answer for it, because it saves them time or a mistake they would otherwise make.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. The Lead magnet solves a problem of the ICP.
- If the Value proposition section still holds its placeholder, tell the Founder to run `/gtm-playbook:value-prop` first. The Lead magnet's last step leads to that claim.

If both are missing, name `define-icp` first: `value-prop` needs it.

Then read every `campaign.md` under `gtm/campaigns/`. A Campaign can take a Lead magnet only if its `State:` is `planned` and its folder holds no `lead-magnet.md`. In each case below, **stop** the same way: write nothing, create no file or folder, and do not interview the Founder.

- If no Campaign is planned (the folder does not exist, or every Campaign is live or judged), tell the Founder to run `/gtm-playbook:plan-campaign` first. A Lead magnet without a hypothesis is posting and hoping: nothing would tell the Founder whether it worked.
- If the Founder named a Campaign that already has a Lead magnet, or every planned Campaign already has one, refuse: a Campaign is tested with exactly one Lead magnet, and a second would blur which one worked. To test another Lead magnet, the Founder plans a new Campaign with `/gtm-playbook:plan-campaign`.
- If the Founder named a Campaign that is live or judged, refuse: its test is already running or over, and a new Lead magnet would change what is being tested. Name `/gtm-playbook:plan-campaign`.

If several Campaigns can take a Lead magnet and the Founder did not name one, the Campaign is the first question of the Interview. Offer only the Campaigns that can take one.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the Campaign's `campaign.md`. Its **Hypothesis** says which slice of the ICP the Lead magnet is for, and its **Artifacts needed** list gives the Lead magnet's form, the one problem it solves, and its point of view. Those were decided when the Campaign was planned: build on them, do not decide them again. Note whether that line or any field it depends on is `(unconfirmed)` or an Open question.
- Read the whole Profile. The ICP section gives who has the problem, the Early adopters, and the Platform; the Value proposition gives the claim the last step leads to. Note every `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)). If the ICP's or the Value proposition's `Last revised` date is later than the Campaign's `Profile date`, the Campaign was planned against an older Profile: say so, and say what changed.
- Read every file in `gtm/conversations/` and `gtm/experiment-log.md` if they exist. Customer conversations give the ICP's own words for the problem, the mistakes they described, and the objections they raised, which are the best material for the outline and the title.
- Read whatever else shows what the Founder knows about the problem: a `README.md`, docs, a landing page, blog posts. The point of view comes from what the Founder learned building the product.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 2.

Give every question 2 to 4 lettered options drafted from what you found in step 2, mark the one you recommend, and tell the Founder they can answer with something else.

Hold each answer to its branch's **done when** test before you count the branch as settled. An answer that fails the test settles nothing: say why in the next round and ask again with a sharper recommendation, instead of accepting it or offering a weaker answer as one of the options. Never show a draft of the Lead magnet while the interview is running, and never park a branch whose test is unmet as an Open question: Open questions are only for when the Founder says to write now.

The design tree for this skill grows from the root branches below. Each has a **done when** test: keep drilling into the decisions under a branch, round after round, until its test is met. The sub-decisions listed are where to start, not the whole tree; there is no limit on rounds.

- **Campaign** (only if several can take a Lead magnet and the Founder did not name one): which Campaign this Lead magnet tests. Done when one is chosen. Recommend the one with the earliest publish-by date.
- **Older Profile** (only if the Campaign was planned against an older Profile): whether the Campaign still tests the current ICP and Value proposition. Done when the Founder decides to go on with this Campaign, or to plan a new one. Recommend going on when the change does not touch the hypothesis's slice of the ICP or its problem, and planning a new Campaign with `/gtm-playbook:plan-campaign` when it does. If they choose a new Campaign, stop and write nothing.
- **Form, problem, and point of view** (only if the Campaign's Lead magnet line is `(unconfirmed)` or an Open question): settle what the line left open. Done when the Lead magnet is one checklist or one guide, solves one specific problem from the Campaign's hypothesis, and has a point of view a reader could disagree with. A problem outside the hypothesis is a different Campaign: name `/gtm-playbook:plan-campaign` rather than changing the hypothesis here.
- **Point of view in practice**: what the Founder knows about this problem that the ICP's usual advice misses. Done when you can say the common approach, why it fails the ICP, and what the Founder does instead, and you have at least one concrete example, number, or story from the Founder or from Customer conversations that backs it. Start from: the mistake the ICP makes most, what building the product taught the Founder, and what prospects said in conversations.
- **Outline**: the items of the checklist or the sections of the guide, decided after Point of view in practice. Done when a checklist has 5 to 10 items, each a check the reader can run and pass or fail, or a guide has 3 to 7 sections, each with the one thing it tells the reader to do; every item serves the one problem; the point of view runs through them rather than sitting in an introduction; and the reader can act on every item without the product. Recommend a full outline drafted from what you found, and ask the Founder what to cut, add, or reorder.
- **Next step**: how the Lead magnet ends, decided after Outline. Done when it is one step that follows from the last item, names the Value proposition's gain, and invites one action (a call, a free trial, or a reply) without a sales pitch. Recommend the action the Campaign's Target signal counts: a Customer conversation, or a free trial when the Target signal counts free trials started.
- **Title**: the title the ICP sees in a post and on the landing page, decided last. Done when it names the problem or the result in the ICP's own words, promises no more than the outline delivers, and the Founder would post it unchanged. Recommend titles that use the words from Customer conversations where there are any.

Do not ask about the ICP, the Value proposition, positioning, pricing, or the Campaign's hypothesis, Target signal, or dates: the skills that own those decide them. Do not draft the posts, the landing page, or the warm outbound: they are separate Artifacts.

If the Founder says to write now, or told you to take their answers as final, stop interviewing. The problem, the point of view, and the outline can never be left open: if any of them is still unsettled, do not write the Lead magnet. Tell the Founder which one is missing and why a Lead magnet without it cannot test the hypothesis, and ask it again. Once those are settled, record every other branch still open as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes, and go to step 4.

### 4. Confirm, then write

Once the frontier is empty, or the Founder said to write now and step 3 allows it, show the Founder the Lead magnet you are about to write, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft.

Check again that the Campaign is still `planned` and its folder holds no `lead-magnet.md`: never overwrite or edit an existing Lead magnet. Create `gtm/campaigns/<slug>/lead-magnet.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, with `Written:` set to today and `Profile date:` set to the later of the ICP's and the Value proposition's `Last revised` dates. Write nothing else: not the Profile, not `campaign.md`, not the Experiment log, not any other Artifact.

### 5. Done

Tell the Founder the Lead magnet is outlined and where it is, and that they write it out from the outline and host it before the Campaign's publish-by date. Say what comes next: the Artifacts the Campaign still needs, from its **Artifacts needed** list (the social posts that offer the Lead magnet, the landing page that trades it for name, email, and the Lead stage answer, and warm outbound to the ICP leads it brings in). If the Lead magnet builds on an `(unconfirmed)` Profile field, name the field and the skill that settles it.
