---
name: social-post
description: "Draft your Campaign's social posts: problem-first posts for your ICP's Platform, built from your ICP, Value proposition, and the Campaign's Lead magnet, each ending with a link to the Lead magnet. Run after lead-magnet, once per Campaign."
disable-model-invocation: true
---

# Social post

Draft the social posts of a planned Campaign: educational posts on the ICP's problem, each ending with a link to download the Campaign's **Lead magnet**. This skill writes them as one Artifact, `social-posts.md`, in the Campaign's folder under `gtm/campaigns/`. It reads the Profile, the Campaign's definition, and its Lead magnet, and never writes any of them.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the posts.

## Why problem-first, with a link

The goal of a post is not to sell the product: it is to bring the ICP into as many Customer conversations as possible. The Platform's algorithm shows a post to whoever it will be valuable to, whether or not they follow the Founder. A post about a specific ICP's problem reaches that ICP. A post written for likes (a selfie, a wild story) reaches people who are not the ICP and brings no leads.

Hold every post to these tests:

- **Problem first.** It teaches the ICP something about the urgent and important problem the Lead magnet solves, and says why the product is ten times better at it, in the words of the Value proposition. It does not try to sell the product.
- **Ends with a link.** Its last line sends the reader to the landing page to download the Lead magnet.
- **No comment-below call to action.** Never "comment below for the guide". The people who comment for something free are rarely buyers. Buyers with budget lurk: they do not comment in public, but they follow a link.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md): if the Profile is missing, or the ICP or the Value proposition still holds its placeholder, name the skill to run first (`define-icp` before `value-prop`), then **stop**: write nothing and do not interview the Founder.

Then read every `campaign.md` under `gtm/campaigns/`. A Campaign can take posts only if its `State:` is `planned`, its **Artifacts needed** has a Social posts line, and its folder holds a `lead-magnet.md` and no `social-posts.md`. Stop the same way in each case below.

- If no Campaign is planned, tell the Founder to run `/gtm-playbook:plan-campaign` first.
- If the Campaign has no Lead magnet yet, tell the Founder to run `/gtm-playbook:lead-magnet` first. Every post links to it.
- If the Campaign already has its posts, or has no Social posts line, refuse: its posts are written once, or not at all. To test other posts, the Founder plans a new Campaign.

If more than one Campaign can take posts and the Founder did not name one, ask which before the Interview.

### 2. Explore

Read the whole Profile, the Campaign's `campaign.md` (its Hypothesis, and its Social posts line for how many posts and which Platform), and its `lead-magnet.md`. Note every `(unconfirmed)` field you build on, including the Social posts line, and any answers the Founder already gave.

### 3. Interview in rounds

Run the Interview: call the Skill tool with `gtm-playbook:interview`. You only ask what is still open after step 2. Give every question 2 to 4 lettered options drafted from what you found, mark the one you recommend, and hold each answer to its branch's **done when** test. Never show a draft of the posts while the Interview is running.

- **Angles**: what each post teaches, one per post the Social posts line asks for. Done when every angle passes the Problem first test. Recommend angles drawn from the Lead magnet.
- **Link**: the landing page URL. Done when the Founder gives it, or says the landing page is not live yet (then every post uses `<landing page link>`).

If the Founder asks for a comment-below call to action, or a post written for likes, refuse and say why. If they want a different problem or Platform, that is a different Campaign: name `/gtm-playbook:plan-campaign`. Do not draft the landing page or the warm outbound: they are separate Artifacts.

If the Founder says to write now, stop interviewing. Angles can never be left open: if they are unsettled, do not write; say so and ask again.

### 4. Confirm, then write

Show the Founder the posts you are about to write, each checked against the tests above, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they told you to write without confirming. An answer to an Interview question is never a confirmation.

Check again that the Campaign is still `planned` and holds no `social-posts.md`. Create `gtm/campaigns/<slug>/social-posts.md` in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else: not the Profile, not `campaign.md`, not any other Artifact.

### 5. Done

Tell the Founder where the posts are, and to publish them on the Platform by the Campaign's publish-by date, once the Lead magnet and the landing page are live. Name the Artifacts still missing from the Campaign's Artifacts needed list. If the posts build on an `(unconfirmed)` field, name it and the skill that settles it.
