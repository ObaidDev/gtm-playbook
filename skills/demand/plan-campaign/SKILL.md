---
name: plan-campaign
description: "Open a Campaign: reads your ICP and Value proposition, interviews you about the one hypothesis to test, the Target signal and judge-by date that will decide it, and the Artifacts it needs, then creates the Campaign's folder in the planned state. Run after value-prop, and again for every new hypothesis."
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
- **A signal from buyers, not from the crowd.** Count Lead magnet downloads, how many of them are ICP leads by their Lead stage answer, and Customer conversations. Likes, comments, followers, and impressions are not a Target signal: people who comment just to get something free are rarely buyers, and real buyers with budget tend to read without commenting.
- **Committed before publishing.** The Target signal, the result that would justify scaling, and the dates are set now, and missing the Target signal means the hypothesis is killed. A Campaign without them cannot be judged, so it is not written.

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
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 2.

Give every question 2 to 4 lettered options drafted from what you found in step 2, mark the one you recommend, and tell the Founder they can answer with something else.

Hold each answer to its branch's **done when** test before you count the branch as settled. An answer that fails the test settles nothing: say why in the next round and ask again with a sharper recommendation, instead of accepting it or offering a weaker answer as one of the options. Never show a draft of the Campaign while the interview is running, and never park a branch whose test is unmet as an Open question: Open questions are only for when the Founder says to write now.

The design tree for this skill grows from the root branches below. Each has a **done when** test: keep drilling into the decisions under a branch, round after round, until its test is met. The sub-decisions listed are where to start, not the whole tree; there is no limit on rounds.

- **Hypothesis**: the one claim about the ICP this Campaign tests. Done when it names a slice of the ICP the Founder could find on the Platform, the problem they have, and what they will do if it is true (trade their contact details for a Lead magnet on that problem), and the Target signal could prove it false. Start from: which slice (recommend the Early adopters), which part of the urgent and important problem, and why the Founder believes it. If the slice is not part of the ICP in the Profile, say so and name `/gtm-playbook:define-icp`: redrawing the ICP is that skill's decision, not this one's.
- **Lead magnet**: the one Lead magnet that tests the hypothesis, decided after Hypothesis. Done when it is one checklist or one guide, it solves one specific problem from the hypothesis, and you can say its distinct point of view in a sentence. Start from: the form, the problem it solves, and the point of view. Only its topic is decided here: the Lead magnet itself is a separate Artifact.
- **Target signal**: the measurable result the Campaign commits to, decided after Hypothesis. Done when every number in it is something the Founder can count from what the Campaign produces (Lead magnet downloads, how many of them are ICP leads by their Lead stage answer, Customer conversations held, and if wanted free trials started), it holds no likes, comments, followers, or impressions, and the Founder agrees that missing it means the hypothesis is killed. Recommend a number of ICP leads and a number of Customer conversations, set high enough that hitting them would be real evidence for the hypothesis. Weight the recommendation by the Product stage: before there is a product (`pre-product`), Customer conversations are the evidence that counts and downloads only lead to them, so recommend enough conversations to hear the problem and its objections from several prospects, not a handful; with a product (`beta` or `revenue`), free trials started can carry part of the weight.
- **Scale if**: the result at which the Campaign is worth promoting with paid, decided after Target signal. Done when it is counted the same way as the Target signal, every number in it is above the Target signal's, and the Founder agrees that hitting it means scaling the Campaign rather than only keeping it. Recommend roughly double the Target signal unless what you found says otherwise.
- **Dates**: the publish-by date and the judge-by date, decided after Artifacts needed. The test window runs from publishing, not from planning, so the time spent writing the Artifacts never eats into it. Done when the publish-by date is a calendar date after today that leaves time to write the Lead magnet and the Artifacts needed, and the judge-by date comes after it, far enough for leads to arrive and Customer conversations to be held, and near enough to find out within weeks rather than quarters. Recommend a publish-by date from how much the Artifacts needed take to write, and a judge-by date about four weeks after it, unless what you found says otherwise, and say why.
- **Unconfirmed fields**: decided after Hypothesis, and only if the Campaign builds on an `(unconfirmed)` Profile field. Done when each such field is named with what the Campaign's Customer conversations should find out to settle its Open question. Recommend the question to ask in those conversations. Settling the field itself stays with its owning skill.
- **Artifacts needed**: the Artifacts that promote the Lead magnet, decided after Lead magnet. Done when the list holds the Lead magnet and every Artifact the Campaign will publish to promote it, each with what it is for, and every post goes on the ICP's Platform. Start from: how many social posts on the Platform, the landing page that asks for name, email, and the Lead stage question, and warm outbound to the ICP leads it brings in. Recommend all of them; drop one only when the Founder says why.

Do not ask about the ICP, the Value proposition, positioning, or pricing: the skills that own those Profile sections do that.

If the Founder says to write now, or told you to take their answers as final, stop interviewing. Hypothesis, Target signal, and Dates can never be left open: if any of them is still unsettled, do not write the Campaign. Tell the Founder which one is missing and why a Campaign cannot be judged without it, and ask it again. Once those three are settled, record every other branch still open as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes, and go to step 4.

### 4. Confirm, then write

Once the frontier is empty, or the Founder said to write now and step 3 allows it, show the Founder the Campaign definition you are about to write, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft.

Pick a short slug for the Campaign from its hypothesis (lowercase words joined by hyphens). If `gtm/campaigns/<slug>/` already exists, pick another slug: never overwrite or edit an existing Campaign. A Founder who wants to change a Campaign's hypothesis is opening a new Campaign.

Create `gtm/campaigns/<slug>/campaign.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, with `State: planned`, `Planned:` set to today, and `Profile date:` set to the later of the ICP's and the Value proposition's `Last revised` dates, so a later run can tell when the Campaign was planned against an older Profile. Write nothing else: not the Profile, not the Experiment log, not any Artifact.

### 5. Done

Tell the Founder the Campaign is planned, where its folder is, and its publish-by and judge-by dates. Say that the Lead magnet comes first (`/gtm-playbook:lead-magnet`), then the Artifacts that promote it, and that nothing should be published before the Target signal is written down, which it now is. If the Campaign builds on an `(unconfirmed)` Profile field, name the field and the skill that settles it once the Customer conversations have answered it.
