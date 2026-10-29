---
name: gtm-retro
description: "Judge a live Campaign on its judge-by date: compares the signal you counted in its Experiment log and the Customer conversations it brought in with its Target signal, then records its Verdict (kept, killed, or scaled) and closes it. A killed Verdict names the positioning skill to revise when the evidence points at your ICP or Value proposition. Run once per Campaign, when its judge-by date comes."
disable-model-invocation: true
---

# GTM retro

Judge one live **Campaign** and record its **Verdict**: kept, killed, or scaled. This skill owns the move of a Campaign from live to judged (ADR-0003). It reads the Profile, the Campaign and its Artifacts, the Experiment log, and the Customer conversations, and writes nothing but the judged Campaign's `campaign.md`: its `State:` line and a Verdict section at the end. It never edits the Profile (ADR-0002): when the evidence contradicts a section, it names the skill that owns it.

Read [STATE.md](../setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Verdict.

## Why judge every Campaign

A Campaign committed to its Target signal and Scale if before anything was published, so that its Verdict is decided by numbers and not by how the Founder feels about it. Organic social gives a signal on whether the posts hit a nerve with the ICP; once a Campaign proves itself, the posts that work organically are worth promoting with paid. When a Campaign fails, the Customer conversations say which part is broken: the ICP is not the right people, the problem is not urgent and important for them, or the Value proposition is not ten times better than what they use today. Finding that out as early as possible is the point of the Campaign.

Hold every Verdict to these tests:

- **The rule decides, not the mood.** A Campaign that misses its Target signal is killed, one that meets it but falls short of Scale if is kept, and one that meets Scale if is scaled. Never soften a miss into kept, or round a near miss up.
- **The Founder's totals.** Each total is what the Founder counted for the whole Campaign. Never add up the Experiment log entries yourself: two trials can count the same lead. Customer conversations are counted from the recorded files that link to the Campaign.
- **Buyers, not the crowd.** Likes, comments, followers, and impressions are not the signal, however good they look.
- **Evidence for the Profile, never an edit.** Name each section the conversations contradict, with the evidence, and the skill that owns it.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../setup-gtm/STATE.md). In each case below, **stop**: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If no Campaign under `gtm/campaigns/` is `live`: when one is `planned`, say it has no Experiment log entries yet, so there is nothing to judge, and name `/gtm-playbook:log-experiment`; otherwise name `/gtm-playbook:plan-campaign`.

Only a `live` Campaign is judged. If the Founder names a `planned` Campaign, refuse the same way; if they name a `judged` one, refuse and show its Verdict: a Campaign is judged once. If more than one Campaign is `live` and the Founder did not say which to judge, ask before the Interview.

If the Campaign's judge-by date is still ahead, stop the same way: say how many days are left, and that the Campaign is judged on that date.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the Campaign's `campaign.md`: its Hypothesis, Target signal, Scale if, dates, and Builds on unconfirmed line are what it is judged against. Read the Artifacts in its folder.
- Read every entry for this Campaign in `gtm/experiment-log.md`: each trial's Signal, Decision, and linked Customer conversations.
- Read every file in `gtm/conversations/` whose Campaign is this one. Count them, and note what each says about the problem, the Value proposition, budget, and objections, and its **Contradicts the Profile** line.
- Read the whole Profile: the ICP and the Value proposition are what the conversations are checked against. Note every `(unconfirmed)` field the Campaign builds on.
- Read whatever the Founder gave in the message that invoked this skill, such as the totals they counted.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the Campaign's total for each number in its Target signal and Scale if, the Verdict those totals give by the rule, what its Customer conversations found about the Hypothesis, and each Profile section to revisit, held to the tests above. For each total, show the Signal of every entry the Founder logged and ask for the Campaign's total, without adding them up yourself; recommend the Customer conversations total from the linked files. If **Scale if** is `(unconfirmed)`, judge against its draft numbers and say so. Recommend each contradiction you found in the conversations with the ICP or the Value proposition, and each `(unconfirmed)` field the conversations answered.

Do not ask how to change the ICP or the Value proposition: `/gtm-playbook:define-icp` and `/gtm-playbook:value-prop` own them. Do not ask about a new hypothesis: that is the next Campaign, planned by `/gtm-playbook:plan-campaign`. A Verdict records what happened, so if the Founder says to write now, every total must still be the Founder's: a total they have not counted is asked again, never estimated.

### 4. Confirm, then write

Show the Founder the Verdict section you are about to append, in a message that asks nothing else, and say that it closes the Campaign: it takes no more Experiment log entries or Artifacts. Write only once the Founder confirms that draft, or straight away if they told you to write without confirming. An answer to an Interview question is never a confirmation.

Check again that the Campaign is `live`. In its `campaign.md`, change the line `State: live` to `State: judged`, and append the Verdict section at the end of the file in the format [STATE.md](../setup-gtm/STATE.md) gives. Change nothing else in that file, and write nothing else: not the Profile, not the Experiment log, not an Artifact, not a conversation.

### 5. Done

Tell the Founder the Campaign is judged, with its Verdict and its totals beside its Target signal and Scale if. Then name the next step for that Verdict:

- **Kept**: the hypothesis held but has not earned paid promotion. To keep testing it, plan a new Campaign with `/gtm-playbook:plan-campaign`, building on what this one learned.
- **Killed**: when the evidence contradicts the ICP or the Value proposition, revising it comes first (see below). When nothing in the Profile is contradicted, the hypothesis itself was wrong: plan a different one with `/gtm-playbook:plan-campaign`.
- **Scaled**: the posts that worked organically are now worth promoting with paid, and the leads retargeted on the same platform. Say that `scale-with-paid`, the skill that plans this, is not shipped yet.

Whatever the Verdict, for each section in **Revise**, name the skill to run, `/gtm-playbook:define-icp` or `/gtm-playbook:value-prop`, which reads every conversation when revising, and for each `(unconfirmed)` field the conversations answered, the skill that settles it. Never edit the Profile yourself.
