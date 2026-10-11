---
name: landing-page
description: "Write your Campaign's landing page copy: reads your ICP's Lead stage and the Campaign's Lead magnet, interviews you about the offer and the answers to the Lead stage question, then saves a page that asks for name, email, and Lead stage in the Campaign's folder. Run after lead-magnet, once per Campaign."
disable-model-invocation: true
---

# Landing page

Write the landing page of a planned Campaign: the page the posts link to, where a prospect downloads the **Lead magnet** in return for their name, email, and **Lead stage** answer. This skill writes it as an Artifact, `landing-page.md`, in the Campaign's folder under `gtm/campaigns/`. It reads the Profile, the Campaign's definition, and its Lead magnet, and never writes any of them.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of a landing page.

## Why name, email, and Lead stage

Buyers with budget do not comment on posts to get something free; they click a link. The landing page turns that click into two things: the prospect's contact details, and their Lead stage answer, which tells the Founder whether they are an ICP lead before any warm outbound.

Hold every landing page to these tests:

- **It offers the Lead magnet.** The page gives the Lead magnet and the one problem it solves. It is not a pitch for the product.
- **Name, email, and the Lead stage question.** Exactly these, with the question taken from the ICP.
- **Every answer sorts the lead.** Each answer the prospect can pick marks them as an ICP lead or not.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop** and end there: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its placeholder, tell the Founder to run `/gtm-playbook:define-icp` first. The Lead stage question lives there.

Then read every `campaign.md` under `gtm/campaigns/`. A Campaign can take a landing page only if its `State:` is `planned`, its **Artifacts needed** lists a Landing page, and its folder holds a `lead-magnet.md` and no `landing-page.md`. Stop the same way in each case below.

- If no Campaign is planned, tell the Founder to run `/gtm-playbook:plan-campaign` first.
- If the Campaign has no Lead magnet yet, tell the Founder to run `/gtm-playbook:lead-magnet` first. The page exists to give it away.
- If the Campaign already has its landing page, or its Artifacts needed lists none, refuse: a Campaign has one landing page. For another, the Founder plans a new Campaign.

If more than one Campaign can take a landing page and the Founder did not name one, ask which before the Interview.

### 2. Explore

Read the Campaign's `campaign.md` and `lead-magnet.md`, and the ICP's **Lead stage** line. Note every `(unconfirmed)` field you build on (see [STATE.md](../../meta/setup-gtm/STATE.md)), and any answers the Founder already gave in the message that invoked this skill.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. Give every question 2 to 4 lettered options drafted from step 2, mark the one you recommend, and hold each answer to its branch's **done when** test.

- **Offer**: the copy above the form. Done when it names the Lead magnet's title and the one problem it solves, and pitches nothing but the Lead magnet.
- **Answers**: the choices the prospect picks from for the Lead stage question. Done when every answer the ICP's Lead stage lists is a choice and each choice marks an ICP lead or a non-ICP lead.

If the Founder wants a different Lead stage question, that is the ICP's decision: name `/gtm-playbook:define-icp` and do not change it here.

If the Founder says to write now, stop interviewing. Answers can never be left open; record an unsettled Offer as an Open question, as [STATE.md](../../meta/setup-gtm/STATE.md) describes.

### 4. Confirm, then write

Show the Founder the landing page you are about to write, in a message that asks nothing else, and write only once they confirm it (or straight away if they said to write without confirming).

Check again that the Campaign is still `planned` and its folder holds no `landing-page.md`. Create `gtm/campaigns/<slug>/landing-page.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else.

### 5. Done

Tell the Founder where the landing page is, and that the posts link to it once it is live. If it builds on an `(unconfirmed)` field, name it and the skill that settles it.
