---
name: outcome-pricing
description: "Price on outcomes, not seats: reads your Value proposition and Outcome positioning, interviews you about the unit of outcome you charge for, a platform fee with unlimited seats, the usage it includes, and the overage beyond it, challenging any per-seat price, then writes the Pricing section of your Profile. Run after outcome-positioning, and again when the Outcome positioning changes or Customer conversations push back on price."
disable-model-invocation: true
---

# Outcome pricing

Write the **Pricing** section of the Founder's Profile at `gtm/profile.md`: Outcome pricing, a platform fee with included usage plus usage overage, replacing per-seat pricing. This skill owns that section and nothing else (ADR-0002): every other section is read, never written.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Pricing section.

## Why a platform fee plus usage

Software sold on productivity was priced by the seat: the more people using it, the more the customer paid. An AI-native product does the work itself, so the customer needs fewer people, and a per-seat price shrinks as the product succeeds. It also asks the wrong question: is the agent doing the work one seat, or ten?

Outcome pricing has three parts:

- **Platform fee.** A fixed monthly or yearly fee with unlimited seats. It is higher than a typical low-priced SaaS tool, because the product does part of the work a person would otherwise do: it is priced against a share of that labor budget plus the software budget, not against other tools in the category.
- **Included usage.** The fee includes a set number of units of usage, each one outcome the product delivers, like the minutes in a phone plan.
- **Overage.** Beyond the included usage, each extra unit is charged. The more the customer uses the product, the more outcomes they get and the more they pay, so the price grows with each customer's success instead of their headcount.

Hold every answer to these tests:

- **No per-seat price.** Seats are unlimited. If the Founder proposes a price per user, seat, or login, say it is per-seat pricing and recommend the platform fee it turns into.
- **Charged on the outcome.** One unit of usage is one outcome the product delivers, the outcome the Outcome positioning names.
- **Priced on the work done.** The platform fee is set against a share of what the ICP pays people to do the work, plus the software budget. A fee as low as a seat-priced tool is a sign it is priced as a tool, not as the work.
- **Room to grow.** A customer who gets more outcomes uses more than the included usage and pays the overage, and the overage price per unit is above what one unit costs the Founder to deliver. As model costs fall, the Founder can lower the overage and stay profitable.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In any case below, **stop** at the first that applies and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:define-icp` first.
- If the Value proposition section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:value-prop` first.
- If the Outcome positioning section still holds its `_Not defined yet.` placeholder, tell the Founder to run `/gtm-playbook:outcome-positioning` first. The unit of usage is the outcome that section names, so the price cannot be written without one, even when the Founder offers a price.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the whole Profile. The Outcome positioning section names the outcome and the work the product gets done; the Value proposition section names the alternatives and the measure; the ICP section names who pays; the Product section gives the Product stage and Sales motion; the current Pricing, if filled in, is what this run revises. Note whether the Value proposition's or the Outcome positioning's `Last revised` date is later than the Pricing's: if so, the price was set for an older claim. Note any `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)).
- Read every file in `gtm/conversations/` if that folder exists. These Customer conversations are evidence: price objections, what prospects pay today for the alternatives, and the words they used. When revising, note the ones dated after the Pricing's `Last revised` date.
- Read whatever else describes the product's current pricing or its costs: a `README.md`, a pricing page, billing code, the code itself.
- Note any answers the Founder already gave in the message that invoked this skill.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the Pricing's unit of usage, Platform fee (the fee, its billing period, and unlimited seats), Included usage, and Overage, on the current section's Open questions and any field it lacks (see [STATE.md](../../meta/setup-gtm/STATE.md)), and, when Customer conversations exist, on whether they show price objections or what prospects pay today, held to the tests above.

Do not ask about the ICP, the Value proposition, or the Outcome positioning: `/gtm-playbook:define-icp`, `/gtm-playbook:value-prop`, and `/gtm-playbook:outcome-positioning` own those sections, so if the Outcome positioning looks wrong, name `/gtm-playbook:outcome-positioning` rather than changing it here. If the Founder says to write now, or told you to take their answers as final, record every open field as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Once the Interview is done, or the Founder said to write now, show the Founder the Pricing section you are about to write, in a message that asks nothing else, and, when revising, say what changes. Write only once they confirm that draft, or straight away if they already told you to write without confirming. An answer to an interview question is never a confirmation, even one given beside a draft. A Founder's instruction to write without confirming does not waive the tests above: if their price is per seat, say so in your reply and write the platform fee, included usage, and overage it turns into, keeping the per-seat figure out of the field values.

Replace the body of the Pricing section only, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives, and set its `Last revised` to today. Leave every other section exactly as it is, byte for byte, including its date. Never write any other file.

### 5. Done

Tell the Founder the Pricing is set and what to run next: whichever owned section is still empty, in the Profile's order, or, when every section is filled, that the Profile is ready to plan a Campaign. If the Pricing changed on a revision, say that Artifacts quoting the old price may now be stale.
