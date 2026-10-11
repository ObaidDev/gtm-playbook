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

- Read the whole Profile. The ICP section says who has the problem and what it is; the Product section says what the product does; the current Value proposition, if filled in, is what this run revises. Note whether the ICP's `Last revised` date is later than the Value proposition's: if so, the claim was written for an older ICP. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: which alternatives prospects named, whether the claim landed, and the words they used. When revising, note the ones dated after the Value proposition's `Last revised` date.
- Read whatever else describes the product and its competitors: a `README.md`, a landing page, docs.
- Note any answers the Founder already gave in the message that invoked this skill. Do not ask a question they have already answered.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 2.

Give every question 2 to 4 lettered options drafted from what you found in step 2, mark the one you recommend, and tell the Founder they can answer with something else.

Hold each answer to its branch's **done when** test before you count the branch as settled. An answer that fails the test settles nothing: say why in the next round and ask again with a sharper recommendation, instead of accepting it or offering a weaker claim as one of the options. Never show a draft of the section while the interview is running, and never park a branch whose test is unmet as an Open question: Open questions are only for when the Founder says to write now.

The design tree for this skill grows from the root branches below. Each has a **done when** test: keep drilling into the decisions under a branch, round after round, until its test is met. The sub-decisions listed are where to start, not the whole tree; there is no limit on rounds. When revising, the Value proposition section's Open questions and any field it lacks are open branches: ask them in the first round (see [STATE.md](../../meta/setup-gtm/STATE.md)).

- **Alternatives**: what the ICP uses today to solve the problem. Done when the list names at least one product the ICP could buy instead, alongside doing nothing and, for an AI-native product, a general model. Start from: named competitors, what the ICP does by hand, a hire or an agency, and doing nothing. Recommend the ones you found in step 2. If the Founder says there are no competitors, push back: a problem nobody else is trying to solve is usually not urgent, or the ICP is drawn around the wrong problem. Recommend looking again, and name `/gtm-playbook:define-icp` if the ICP needs redrawing.
- **Measure**: the one measure on which the product is ten times better than those alternatives, decided after Alternatives. Done when it is one number the ICP already feels, and you can state its value under each Alternative and with the product. Start from: the unit (hours, money, errors, reach), its value today, and its value with the product. Recommend the measure the ICP's problem points to.
- **Ten times check**: whether the gain on that measure is plausibly ten times, and why. Done when the gain is ten times against every Alternative and the Founder can say what the product does that each one cannot, or the Founder has chosen a different alternative or measure. If it is not, say so plainly and recommend a narrower ICP, a different alternative, or a different measure; do not accept the claim because the Founder repeats it. A narrower ICP is a decision for `/gtm-playbook:define-icp`, so name that skill rather than changing the ICP here.
- **Sentence**: the one-sentence Value proposition, decided last. Done when it names the ICP's problem, the gain, and the measure, and the Founder would say it to a prospect unchanged. Recommend a draft in the ICP's own words where Customer conversations give them.
- **Evidence** (only when Customer conversations exist): whether the conversations show the claim landing or not. Recommend the change they support, quoting the prospects' own words.

Do not ask about the ICP, outcome positioning, or pricing: the skills that own those sections do that.

If the Founder says to write now, or told you to take their answers as final, stop interviewing: record every branch still open as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes, and go to step 4.

### 4. Confirm, then write

Once the frontier is empty, or the Founder said to write now, show the Founder the Value proposition section you are about to write, in a message that asks nothing else, and, when revising, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft. A Founder's instruction to write without confirming does not waive the ten times check: if the claim fails it, say why in your reply and write the honest claim, not the inflated one.

Replace the body of the Value proposition section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Value proposition is set and what to run next: whichever owned section is still empty, in the Profile's order. If the Value proposition changed on a revision, say that Artifacts built on the old claim may now be stale.
