---
name: define-icp
description: "Define your ICP: interviews you about who has the urgent and important problem your product solves, its early adopters, which social platform they spend time on, and the Lead stage question that tells an ICP lead apart, then writes the ICP section of your Profile. Run after setup-gtm, and again when Customer conversations say your ICP is wrong."
disable-model-invocation: true
---

# Define ICP

Write the **ICP** section of the Founder's Profile at `gtm/profile.md`: who has the urgent and important problem the product solves, and which social platform they spend time on. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the ICP section.

## Why the ICP comes first

Every later Artifact (a Lead magnet, a post, an outbound message) is aimed at the ICP, so a vague ICP makes all of them vague. The test for an ICP is not "who could use this" but "who has a problem that is both **urgent** and **important**", as the tests below define them. Even a product that could serve everyone starts with the early adopters who feel the problem most. If the Founder worries that one competitor would leave too small a market, the ICP is probably defined too narrowly or around the wrong problem.

The platform follows from who the ICP is. Social feeds now show posts to whoever the feed predicts will find them useful, not only to followers, so a Founder with no followers can still reach the ICP, but only on the platform the ICP actually spends time on. As a default:

- **Meta** (Facebook, Instagram) for small and medium businesses
- **LinkedIn** for mid-market and enterprise buyers
- **X** for engineering teams and some technical verticals

Pick one platform to concentrate on, not a spread across all of them.

Hold every ICP to these tests:

- **Specific.** A title, a company size, and the trigger moment that makes the problem exist, not "people like me" or a broad group such as "small businesses" or "developers".
- **Urgent and important.** Urgent means they need to solve it now; important means something bad happens to their business if they do not. A problem that is not both is not one this ICP will pay to solve.
- **Early adopters first.** The Early adopters are the slice of the ICP that feels the problem most and will try an imperfect product now.
- **Where the ICP spends time.** One platform, the default above for the Segment, unless what you found shows this ICP spends its time on another.
- **A Lead stage that sorts leads.** The landing page asks what stage the prospect is in, and the answers mark either an ICP lead or a non-ICP lead.

## Process

### 1. Check the prerequisite

Read `gtm/profile.md`. If it does not exist, follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md): **stop**, tell the Founder to run `/gtm-playbook:setup-gtm` first, and end there. Write nothing, create no file or folder, and do not interview them.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The Product section says what the product does, its Product stage, and its Sales motion; the current ICP section, if filled in, is what this run revises. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: who confirmed the problem, who did not, and the words they used. When revising, note the ones dated after the ICP's `Last revised` date and any whose **Contradicts the Profile** names the ICP, and point out where they confirm or contradict the current ICP.
- Read whatever else describes the product and its buyers: a `README.md`, a landing page, docs.
- Note any answers the Founder already gave in the message that invoked this skill.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the ICP's Who, Segment, Urgent and important problem, Early adopters, Platform, and Lead stage (its question, the answers that mark an ICP lead, and the answers that mark a non-ICP lead), on the current ICP section's Open questions and any field it lacks (see [STATE.md](../../meta/setup-gtm/STATE.md)), and, when Customer conversations exist, on whether they change Who, the problem, or the Early adopters, held to the tests above.

Do not ask about the Value proposition, Outcome positioning, or Pricing: `/gtm-playbook:value-prop`, `/gtm-playbook:outcome-positioning`, and `/gtm-playbook:outcome-pricing` own those sections. If the Founder says to write now, or told you to take their answers as final, record every open field as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Once the Interview is done, or the Founder said to write now, show the Founder the ICP section you are about to write, in a message that asks nothing else, and, when revising, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft.

Replace the body of the ICP section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the ICP is set and what to run next: `/gtm-playbook:value-prop` when the Value proposition section is empty, otherwise whichever owned section is still empty, in the Profile's order. If the ICP changed on a revision, say that a filled-in Value proposition was written for the old ICP and may need revising with `/gtm-playbook:value-prop`.
