---
name: plan-campaign
description: "Open a Campaign: reads your ICP and Value proposition, researches your ICP's problem, interviews you about the one hypothesis to test, the Target signal and judge-by date that will decide it, and the Artifacts it needs, then creates the Campaign's folder in the planned state. Run after value-prop, and again for every new hypothesis."
disable-model-invocation: true
---

# Plan campaign

Open a **Campaign** in the Founder's Workspace: one hypothesis about the ICP, the Target signal that will decide it by a judge-by date, and the Artifacts it needs. This skill creates the Campaign's folder under `gtm/campaigns/` in the planned state and owns that transition (ADR-0003). It reads the Profile and never writes it.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of a Campaign's definition.

## Why a hypothesis and a Target signal

Posting content and hoping something happens teaches the Founder nothing. Organic social gives a signal on whether a post hits a nerve with the ICP, but only if the Founder decided beforehand what signal would count. A Campaign turns demand work into a test: one hypothesis about the ICP, one Lead magnet that tests it, and a number the Founder commits to before anything is published. On the judge-by date the Campaign is kept, killed, or scaled against that number, not against how the Founder feels about it.

Hold every Campaign to these tests:

- **One hypothesis.** One claim about one slice of the ICP and its problem. Two claims are two Campaigns: plan one now and note the other for a later run.
- **Exactly one Lead magnet.** The hypothesis is tested by one checklist or guide that solves one specific problem with a distinct point of view. Several Lead magnets in one Campaign blur which one worked.
- **A signal from buyers, not from the crowd.** Count Lead magnet downloads, how many of them are ICP leads by their Lead stage answer, Customer conversations, and free trials started if there is a product to try. Likes, comments, followers, and impressions are not a Target signal: people who comment just to get something free are rarely buyers, and real buyers with budget tend to read without commenting. Customer conversations are the goal at every Product stage: the benchmark is 100 of them to reach a first customer, and a Campaign's Target signal is a step toward it.
- **Scale with paid.** **Scale if** is counted the same way as the Target signal and sits above it. Hitting it means the posts that work organically are worth promoting with paid.
- **Committed before publishing.** The Target signal, Scale if, and the dates are set now, and missing the Target signal means the hypothesis is killed. The test window runs from the publish-by date, which leaves time to write the Artifacts, to the judge-by date. A Campaign without them cannot be judged, so it is not written.
- **Every Artifact that promotes the Lead magnet.** Social posts on the ICP's Platform, a landing page that asks for name, email, and the Lead stage question, and warm outbound to the ICP leads it brings in. Drop one only when the Founder says why.

## Start from what works

The Hypothesis's problem and the Lead magnet's Problem and Point of view are what every Artifact of the Campaign rests on, so never settle them from a blank page. Check them against what the ICP already says and already gets, before the Campaign is committed:

- **The ICP's own questions and complaints** about the problem, in open communities on their Platform. They show which part of the problem is urgent.
- **Reviews of the alternatives** the ICP already uses for the problem. They show, in the buyer's words, what those alternatives get wrong: that is where a distinct Point of view comes from.
- **Proven lead magnets** already offered on the problem. A Point of view that says what they already say is not distinct.
- **Checked facts.** The Point of view holds up against the sources that own its facts; a Campaign does not test a claim that is simply false.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. A hypothesis is a claim about the ICP, and the Lead stage that counts ICP leads lives there.
- If the Value proposition section still holds its placeholder, tell the Founder to run `/gtm-playbook:value-prop` first. Every Artifact the Campaign needs repeats that claim.

If both are missing, name `define-icp` first: `value-prop` needs it.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The ICP section gives who has the problem, the Early adopters, the Platform, and the Lead stage question; the Value proposition gives the claim the Campaign's Artifacts repeat; the Product stage decides how much the Target signal leans on Customer conversations. Note every `(unconfirmed)` field you build on and the Open question behind it (see [STATE.md](../../meta/setup-gtm/STATE.md)): the Campaign's Customer conversations are a chance to settle it.
- Read every `campaign.md` under `gtm/campaigns/` if that folder exists. Note which hypotheses were already tested, which are still planned or live, and how each judged one ended. Do not plan a hypothesis a judged Campaign already killed unless something has changed since, and say what.
- Read `gtm/experiment-log.md` and every file in `gtm/conversations/` if they exist. They are evidence for which problems and which slices of the ICP respond, and give the Founder's prospects' own words.
- Read whatever else describes the product and its buyers: a `README.md`, a landing page, docs.
- Note any answers the Founder already gave in the message that invoked this skill.

Then call the Skill tool with `gtm-playbook:research`, every time, on the four things above, for the ICP's problem as the Profile states it, scoped to the Early adopters and their Platform, and for any problem the Founder already named. Tell it the primary source is the post, the review, or the checklist or guide itself, never an article that rounds them up, and for facts, the source that owns them. Tell the Founder you are researching, and wait for the findings before the Interview: the Hypothesis comes first, and everything else is sized against it.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the Campaign's Hypothesis (which slice of the ICP, starting from its Early adopters, and which part of their problem), its Lead magnet (form, problem, and point of view: only its topic, since the Lead magnet itself is a separate Artifact), Target signal, Scale if, Dates, Artifacts needed, and any `(unconfirmed)` Profile field it builds on (what its Customer conversations should find out), held to the tests above, with the Hypothesis's problem and the Lead magnet's Problem and Point of view built from the research findings.

If the findings show the problem the Founder prefers draws little from the ICP, or its Point of view is what the Proven lead magnets already say, tell the Founder in the first round, with the evidence, and recommend a problem or Point of view the findings support. Never change it yourself: the Founder decides. If the research finds little on the problem, say so and build from the Profile and the conversations. Never ask the Founder for examples, though use any they offer.

Do not ask about the ICP, the Value proposition, positioning, or pricing: the skills that own those Profile sections do that. A slice outside the Profile's ICP is that skill's decision: name `/gtm-playbook:define-icp`. If the Founder says to write now, Hypothesis, Target signal, and Dates can never be left open; record every other open field as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Once the Interview is done, or the Founder said to write now and step 3 allows it, show the Founder the Campaign definition you are about to write, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft.

Pick a short slug for the Campaign from its hypothesis (lowercase words joined by hyphens). If `gtm/campaigns/<slug>/` already exists, pick another slug: never overwrite or edit an existing Campaign. A Founder who wants to change a Campaign's hypothesis is opening a new Campaign.

Create `gtm/campaigns/<slug>/campaign.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, with `State: planned`, `Planned:` set to today, and `Profile date:` set to the later of the ICP's and the Value proposition's `Last revised` dates, so a later run can tell when the Campaign was planned against an older Profile. Write nothing else: not the Profile, not the Experiment log, not any Artifact.

### 5. Done

Tell the Founder the Campaign is planned, where its folder is, and its publish-by and judge-by dates. Say that the Lead magnet comes first (`/gtm-playbook:lead-magnet`), then the Artifacts that promote it, and that nothing should be published before the Target signal is written down, which it now is. If the Campaign builds on an `(unconfirmed)` Profile field, name the field and the skill that settles it once the Customer conversations have answered it.
