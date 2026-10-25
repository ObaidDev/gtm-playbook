---
name: landing-page
description: "Write your Campaign's landing page and help you build it: reads the Campaign's Lead magnet and your ICP's Lead stage, saves the page's copy and fields in the Campaign's folder, then guides you through building it in a free tool, setting it up through the tool's MCP server when you have one connected. Run after lead-magnet, once per Campaign."
disable-model-invocation: true
---

# Landing page

Write the landing page of a planned Campaign: the page the posts link to, where a prospect downloads the **Lead magnet** and gives their name, email, and **Lead stage** answer. This skill writes it as an Artifact, `landing-page.md`, in the Campaign's folder under `gtm/campaigns/`, then offers to help the Founder build it. It reads the Profile, the Campaign's definition, and its Lead magnet, and never writes any of them.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of a landing page.

## Why name, email, and Lead stage

Buyers with budget do not comment on a post to get something free; they click its link. Sending them to a landing page instead of asking for comments brings in higher-intent buyers. Asking for name, email, and Lead stage gets their contact details, and the Lead stage answer tells the Founder which of them are ICP leads before warm outbound.

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
- The **Copy** comes from `lead-magnet.md`: the headline is its title, the subhead its **Problem**, and the button and thank-you line name its **Form** (checklist or guide).
- The Lead stage question and every answer, each marked ICP lead or Not ICP, come from the ICP's **Lead stage** line.

Copy each with its `(unconfirmed)` marker. If the Founder wants a different question or different answers, that is the ICP's decision: name `/gtm-playbook:define-icp` and change nothing here. If they want a different title, Problem, or Form, the Lead magnet is never rewritten: that is a new Campaign, so name `/gtm-playbook:plan-campaign` and change nothing here.

### 3. Confirm, then write

Show the Founder the landing page you are about to write, in a message that asks nothing else, and write only once they confirm it (or straight away if they said to write without confirming).

Check again that the Campaign is still `planned` and its folder holds no `landing-page.md`. Create `gtm/campaigns/<slug>/landing-page.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else.

### 4. Done

Tell the Founder where the landing page is. If it builds on an `(unconfirmed)` field, name it and the skill that settles it. Then offer to help them build it (step 5). If they already have a built page, or say no, end here.

### 5. Build

This step writes nothing in `gtm/`: the tool and the page's URL are not GTM state.

Ask which tool the Founder builds the page in. If they have none, give what the tool must do:

- Have a free plan.
- Host the page.
- Ask the Lead stage question with its fixed answers.
- Email the Lead magnet to every lead automatically.
- Store each lead's name, email, and answer.
- Preferably, have an official MCP server, so the agent can do the setup.

Name two examples, saying they are examples that may have changed, not endorsements, and that the Founder should check the current free plan: HubSpot, whose MCP server can create and publish landing pages (whether its free plan allows this is unverified), and MailerLite, whose MCP server is free on every plan and can set up fields and groups, while the page itself is built by hand.

Then check whether the tool's MCP server is connected in this session:

- **Connected**: do with it what it allows, such as creating the Lead stage field with its answers, an `ICP lead` and a `Not ICP` tag or group that each answer maps to as its **Answers** say, and the page with its Copy and Fields. Before each action, show what it will do, and run it only once the Founder approves. If the server refuses an action (a plan limit, a missing tool), guide that part by hand instead.
- **Not connected**: offer the choice. The Founder can connect the tool's official MCP server (with `claude mcp add`, following the tool's own instructions) and continue with its help, or build by hand.

When building by hand, guide the Founder one part at a time, waiting for each to be done: the page with its Copy, the form with its Fields, the Lead stage answers mapped to `ICP lead` or `Not ICP`, and the email that sends the Lead magnet. The build ends with the Founder publishing the page, and the posts link to it once it is live.
