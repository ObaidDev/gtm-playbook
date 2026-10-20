---
name: social-post
description: "Draft your Campaign's social posts: problem-first posts for your ICP's Platform, built from your ICP, Value proposition, and the Campaign's Lead magnet, adapting posts already working in your niche, each ending with a link to the Lead magnet. Run after lead-magnet, and again to add more posts to a planned or live Campaign."
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

## Adapt a Proven post

Never start a post from a blank page. Look at what already works in the ICP's niche, a **Proven post**, and adapt it: take what works, personalise it with the Founder's ICP, Value proposition, and Lead magnet, and turn it into something valuable for the ICP.

A Proven post improves a post; it never replaces the plan. Each post still teaches the angle the Interview settles, and still passes the tests above. From a Proven post, take only its structure: the hook, the format, how the teaching unfolds. If it ends by asking for comments, its ending becomes the link. If it pulls only through likes-bait, it is not a Proven post. A post with no Proven post to adapt is written problem-first all the same.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop**: write nothing and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If the ICP still holds its placeholder, tell the Founder to run `/gtm-playbook:define-icp` first.
- If the Value proposition still holds its placeholder, tell the Founder to run `/gtm-playbook:value-prop` first.

Then read every `campaign.md` under `gtm/campaigns/`. A Campaign can take posts only if its **Artifacts needed** has a Social posts line and its folder holds a `lead-magnet.md`. It takes its first posts while `planned`, and more posts, appended to its `social-posts.md`, while `planned` or `live`. Stop the same way in each case below.

- If no Campaign is planned or live, tell the Founder to run `/gtm-playbook:plan-campaign` first.
- If the Campaign has no Lead magnet yet, tell the Founder to run `/gtm-playbook:lead-magnet` first. Every post links to it.
- If the Campaign has no Social posts line, or is `judged`, refuse. To test other posts, the Founder plans a new Campaign.

If more than one Campaign can take posts and the Founder did not name one, ask which before the Interview.

### 2. Explore

Read the whole Profile, the Campaign's `campaign.md` (its Hypothesis, and its Social posts line for how many posts and which Platform), and its `lead-magnet.md`. Note every `(unconfirmed)` field you build on, including the Social posts line, and any answers the Founder already gave.

Then call the Skill tool with `gtm-playbook:research`, every time, to find Proven posts on the ICP's Platform about the problem the Lead magnet solves. Tell it the primary source is the post itself, public on the Platform or in an open community, with the comments that show it pulled the ICP in, never an article that rounds up posts or hooks. Do not wait for it: start the Interview.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the angle of each post the Social posts line asks for (what it teaches, drawn from the Lead magnet, and the Proven post it adapts, if any) and the landing page URL (or `<landing page link>` if the page is not live yet), held to the tests above. Ask about the landing page URL first; ask the angles once the research findings are in, so each recommended angle can name its Proven post.

For more posts, read the existing `social-posts.md` first. The Interview settles how many to add, which the Founder sets, and an angle for each that no existing post teaches. The new posts end with the file's Link.

If the research finds no Proven post, say so and recommend the angles without one. Never ask the Founder for example posts, though use any they offer.

If the Founder asks for a comment-below call to action, or a post written for likes, refuse and say why. If they want a different problem or Platform, that is a different Campaign: name `/gtm-playbook:plan-campaign`. Do not draft the landing page or the warm outbound: they are separate Artifacts.

If the Founder says to write now, the angles can never be left open.

### 4. Confirm, then write

Show the Founder the posts you are about to write, each checked against the tests above and naming the Proven post it adapts, if any, in a message that asks nothing else. Write only once they confirm that draft, or straight away if they told you to write without confirming. An answer to an Interview question is never a confirmation.

Check again that the Campaign can still take the posts. Create `gtm/campaigns/<slug>/social-posts.md`, or for more posts append to it, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Write nothing else: not the Profile, not `campaign.md`, not any other Artifact.

### 5. Done

Tell the Founder where the posts are, and to publish them on the Platform by the Campaign's publish-by date, once the Lead magnet and the landing page are live. Name the Artifacts still missing from the Campaign's Artifacts needed list. If the posts build on an `(unconfirmed)` field, name it and the skill that settles it.
