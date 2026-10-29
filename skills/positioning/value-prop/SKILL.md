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

- **Against a real alternative.** Name the status quo the ICP uses today instead: a competitor, existing software, a spreadsheet, or doing nothing, and for an AI-native product, a general model the ICP can already use for a small monthly fee. "Better than the competition" with no named alternative is not a claim.
- **Competitors exist.** If the Founder says there are none, push back: having no competitors is usually a sign the product is not a good one. A Founder who fears one competitor would leave too small a market probably has an ICP to refine, which is `/gtm-playbook:define-icp`'s decision.
- **Ten times better.** The status quo already solves the problem well enough that the ICP gets by, so they switch only for something ten times better at solving it. A claim that is only better is not a Value proposition.
- **On one measure.** The claim is ten times better on the one measure the Measure field names.
- **About the ICP's problem.** It solves the urgent and important problem the ICP section names.
- **One sentence.** The Value proposition is one sentence.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In either case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. A Value proposition is a claim about the ICP's problem, so it cannot be written without one, even when the Founder offers a sentence.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The ICP section says who has the problem and what it is; the Product section says what the product does; the current Value proposition, if filled in, is what this run revises. Note whether the ICP's `Last revised` date is later than the Value proposition's: if so, the claim was written for an older ICP. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: which alternatives prospects named, whether the claim landed, and the words they used. When revising, note the ones dated after the Value proposition's `Last revised` date and any whose **Contradicts the Profile** names the Value proposition.
- Read whatever else describes the product and its competitors: a `README.md`, a landing page, docs.
- Note any answers the Founder already gave in the message that invoked this skill.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the Value proposition's Alternatives, Measure, whether the product is ten times better than those Alternatives on that Measure, and the one-sentence Value proposition, on the current section's Open questions and any field it lacks (see [STATE.md](../../meta/setup-gtm/STATE.md)), and, when Customer conversations exist, on whether they show the claim resonating, held to the tests above.

Do not ask about the ICP, Outcome positioning, or Pricing: `/gtm-playbook:define-icp`, `/gtm-playbook:outcome-positioning`, and `/gtm-playbook:outcome-pricing` own those sections. If the Founder says to write now, or told you to take their answers as final, record every open field as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Once the Interview is done, or the Founder said to write now, show the Founder the Value proposition section you are about to write, in a message that asks nothing else, and, when revising, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft. A Founder's instruction to write without confirming does not waive the ten times better test: if the claim fails it, say why in your reply and write the honest claim, not the inflated one.

Replace the body of the Value proposition section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Value proposition is set and what to run next: whichever owned section is still empty, in the Profile's order. If the Value proposition changed on a revision, say that Artifacts built on the old claim may now be stale.
