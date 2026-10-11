---
name: landing-page
description: "Write your Campaign's landing page: reads the Campaign's Lead magnet and your ICP's Lead stage, then saves a page in the Campaign's folder where a prospect downloads the Lead magnet for their name, email, and Lead stage answer, each answer marking an ICP lead or not. Run after lead-magnet, once per Campaign."
disable-model-invocation: true
---

# Landing page

Write the landing page of a planned Campaign: the page the posts link to, where a prospect downloads the **Lead magnet** and gives their name, email, and **Lead stage** answer. This skill writes it as an Artifact, `landing-page.md`, in the Campaign's folder under `gtm/campaigns/`. It reads the Profile, the Campaign's definition, and its Lead magnet, and never writes any of them.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of a landing page.

## Why name, email, and Lead stage

Buyers with budget do not comment on a post to get something free; they click its link. A landing page that asks for name, email, and Lead stage brings in higher-intent buyers and their contact details, and the Lead stage answer tells the Founder which of them are ICP leads before warm outbound.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop** and end there: write nothing and create no file or folder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP section still holds its placeholder, or has no **Lead stage** line, tell the Founder to run `/gtm-playbook:define-icp` first. The page asks the ICP's Lead stage question.

Then read every `campaign.md` under `gtm/campaigns/` and check, in this order:

- If no Campaign is `planned`, tell the Founder to run `/gtm-playbook:plan-campaign` first.
- If the planned Campaign has no `lead-magnet.md`, tell the Founder to run `/gtm-playbook:lead-magnet` first. The page exists to give it away.
- If the Campaign already has a `landing-page.md`, refuse: a Campaign has one landing page, and it is never overwritten.
- If its **Artifacts needed** has no Landing page line, refuse: the Founder planned this Campaign without one.

If more than one Campaign can take a landing page and the Founder did not name one, ask which first.

### 2. Draft

Build the page from what is already decided; decide nothing new:

- The title and the **Problem** come from `lead-magnet.md`.
- The Lead stage question and every answer, each marked ICP lead or Not ICP, come from the ICP's **Lead stage** line.

Copy each with its `(unconfirmed)` marker. If the Founder wants a different question or different answers, that is the ICP's decision: name `/gtm-playbook:define-icp` and change nothing here.

### 3. Confirm, then write

Show the Founder the landing page you are about to write, in a message that asks nothing else, and write only once they confirm it (or straight away if they said to write without confirming).

Check again that the Campaign is still `planned` and its folder holds no `landing-page.md`. Create `gtm/campaigns/<slug>/landing-page.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else.

### 4. Done

Tell the Founder where the landing page is, and that the posts link to it once it is live. If it builds on an `(unconfirmed)` field, name it and the skill that settles it.
