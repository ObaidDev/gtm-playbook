---
name: log-experiment
description: "Record a trial inside a Campaign in the Experiment log: what you tried, the Artifact it used, the signal you counted, what you decided, and the Customer conversations it brought in. The first entry for a planned Campaign makes it live. Run after every post, paid boost, or outbound batch once you have its numbers."
disable-model-invocation: true
---

# Log experiment

Append one entry to the **Experiment log**, `gtm/experiment-log.md`: one trial inside a Campaign, with the signal the Founder counted. This skill owns the Experiment log and the move of a Campaign from planned to live (ADR-0003). It reads the Profile, the Campaigns, their Artifacts, and the Customer conversations, and writes nothing else, except the `State:` line of a Campaign it makes live.

Read [STATE.md](../../meta/setup-gtm/STATE.md) before writing anything: it is the contract for the `gtm/` folder and gives the exact format of the Experiment log.

## Why log every trial

Organic social gives a signal on whether a post hits a nerve with the ICP, and the posts that work are the ones worth promoting with paid. That signal is only useful if it is written down, trial by trial, against the Campaign it tests: on the judge-by date the Campaign is judged on what its trials brought in, not on how the Founder remembers them.

Hold every entry to these tests:

- **Inside one Campaign.** Every trial tests a Campaign's hypothesis. A trial with no Campaign is not logged: the Founder plans one first.
- **A signal from buyers, not from the crowd.** Count what the Campaign's Target signal counts: Lead magnet downloads, ICP leads by their Lead stage answer, Customer conversations, free trials started. Likes, comments, followers, and impressions are not the signal.
- **The Founder's numbers.** The signal is what the Founder counted. Never invent, estimate, or round it up. A trial without numbers yet is not logged: ask the Founder to come back once they have them.

## Process

### 1. Check the prerequisites

Read `gtm/profile.md`, and follow the missing-prerequisite rule in [STATE.md](../../meta/setup-gtm/STATE.md). In each case below, **stop**: write nothing, create no file or folder, and do not interview the Founder.

- If the Profile does not exist, tell the Founder to run `/gtm-playbook:setup-gtm` first.
- If no Campaign under `gtm/campaigns/` is `planned` or `live`, tell the Founder to run `/gtm-playbook:plan-campaign` first.

A `judged` Campaign takes no more entries. If the trial belongs to one, or to none, refuse: to test it, the Founder plans a new Campaign. If more than one Campaign is `planned` or `live` and the Founder did not say which the trial belongs to, ask before the Interview.

### 2. Explore

Finding facts is your job, never the Founder's.

- Read the Campaign's `campaign.md`: its Hypothesis, Target signal, Scale if, and dates are what the signal is counted against. Read the Artifacts in its folder, to name the one the trial used.
- Read `gtm/experiment-log.md`, if it exists, for the Campaign's earlier entries.
- Read the files in `gtm/conversations/` whose Campaign is this one, for the conversations the trial may have brought in.
- Read the whole Profile, for the Lead stage that tells an ICP lead from a non-ICP lead.
- Read the account of the trial and its numbers the Founder gave in the message that invoked this skill. Draft every field from it.

### 3. Interview

Run the Interview: call the Skill tool with `gtm-playbook:interview`, on the entry's Date, Tried, Artifact, Signal, Decision, and Customer conversations, held to the tests above, with each recommended answer drafted from what the Founder gave. For Customer conversations, recommend the recorded conversations from this Campaign that the trial brought in.

Do not ask whether the Campaign is kept, killed, or scaled: that is its Verdict, given on the judge-by date. Do not ask about the Profile or the Campaign's definition: the skills that own them do that. If the Founder says to write now, a Decision not yet made holds `None yet.` and Customer conversations with none to link hold `None.`; the Date, Tried, Artifact, and Signal can never be left open.

### 4. Confirm, then write

Show the Founder the entry you are about to append, in a message that asks nothing else. If it is the Campaign's first entry, say that it makes the Campaign live, and name any Lead magnet, first social posts, or landing page its Artifacts needed list that is not written yet: once live, the Campaign no longer takes them. Write only once the Founder confirms that draft, or straight away if they told you to write without confirming. An answer to an Interview question is never a confirmation.

Check again that the Campaign is `planned` or `live`. Append the entry to `gtm/experiment-log.md`, creating the file if it does not exist, in the format [STATE.md](../../meta/setup-gtm/STATE.md) gives. Never edit or remove an earlier entry. If the Campaign was `planned`, change its `campaign.md` line `State: planned` to `State: live`, and nothing else in that file. Write nothing else: not the Profile, not an Artifact, not a conversation.

### 5. Done

Tell the Founder the entry is logged, and, if it was the first, that the Campaign is now live. Show each of the Campaign's entries with its Signal, as the Founder counted it, beside the Campaign's Target signal and Scale if, and name its judge-by date. Never add signals up yourself: two trials can count the same lead. If the trial brought in a Customer conversation that is not recorded yet, name `/gtm-playbook:log-conversation`.
