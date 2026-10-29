# The `gtm/` state folder

All GTM state for one product lives in a single `gtm/` folder at the Workspace root, so the Founder can version it, back it up, or share it with a cofounder.

```
gtm/
├── profile.md              # the Profile (created by setup-gtm)
├── campaigns/<slug>/       # one folder per Campaign: campaign.md and its Artifacts
├── conversations/          # one file per Customer conversation, named <YYYY-MM-DD>-<who>.md
├── research/               # research notes, one Markdown file per question (written by research)
└── experiment-log.md       # trials inside Campaigns, each with its signal
```

`setup-gtm` creates only `profile.md`. Each other path is created by the skill that owns it, the first time it has something to write.

## Research notes

`research` writes each set of findings to its own Markdown file in `gtm/research/`, citing the source of every claim. The notes are free-form and never a prerequisite: a skill that reads them never stops because they are missing, and no other skill writes them.

## The Profile

One section per owning skill. Each section has exactly one owner (ADR-0002); every other skill only reads it. Every section carries a `Last revised:` line with an ISO date (`YYYY-MM-DD`), which staleness checks compare against the Profile date an Artifact records.

An empty section holds a single placeholder line, starting `_Not defined yet.`, naming the skill that fills it.

### Missing prerequisites

A skill never guesses state it depends on. When what it needs is missing, it stops before interviewing, names the skill to run first, and writes nothing (no file, no folder):

- **No Profile** (`gtm/profile.md` does not exist): run `/gtm-playbook:setup-gtm`.
- **A needed section still holds its placeholder**: run the skill the placeholder names.

### Open questions

When the Founder stops an interview before every decision is settled (they say to write now, or to take their answers as final), the owning skill writes what it has and records the rest as Open questions, never guessing silently:

- A field whose decision is still open holds the recommended draft followed by ` (unconfirmed)`. The field holds only that draft: why you recommend it, and what the Founder said that it replaces, go in your reply or the Open questions, never in the field.
- The section ends with an Open questions list, one line per open decision, saying what would settle it. A section with nothing open has no Open questions list.

  ```markdown
  **Open questions:**

  - <the decision still open, and what would settle it>
  ```

- A filled section that lacks a field its format lists (it was written before that field existed) is treated as if that field were an Open question.

A skill reading another section never treats an Open question or an `(unconfirmed)` field as a missing prerequisite. It carries on, and tells the Founder which unconfirmed fields it built on and which skill settles them. The owning skill, on its next run, asks its section's Open questions and missing fields in the first round.

### Template

Sections appear in this order, with these exact headings. Replace `<today>` with today's date.

```markdown
# GTM Profile

## Product

Owner: setup-gtm
Last revised: <today>

**Product:** <what the product does and for whom, in one or two sentences>

**Product stage:** <pre-product | beta | revenue>

**Sales motion:** <product-led | sales-led>

## ICP

Owner: define-icp
Last revised: <today>

_Not defined yet. Run `/gtm-playbook:define-icp`._

## Value proposition

Owner: value-prop
Last revised: <today>

_Not defined yet. Run `/gtm-playbook:value-prop`._

## Outcome positioning

Owner: outcome-positioning
Last revised: <today>

_Not defined yet. Run `/gtm-playbook:outcome-positioning`._

## Pricing

Owner: outcome-pricing
Last revised: <today>

_Not defined yet. Run `/gtm-playbook:outcome-pricing`._
```

### Filled sections

When its owner fills a section in, the heading, `Owner:` line, and `Last revised:` line stay as above, and the placeholder is replaced by the owner's body:

- **ICP** (define-icp):

  ```markdown
  **Who:** <the role and kind of company that has the problem>

  **Segment:** <SMB | mid-market | enterprise>

  **Urgent and important problem:** <the problem the product solves for them, and why it is urgent and important now>

  **Early adopters:** <the slice of the ICP that feels the problem most and will try an imperfect product now>

  **Platform:** <Meta | LinkedIn | X | another, the one social platform this ICP spends time on>

  **Lead stage:** <the one question the landing page asks>. ICP lead: <the answers that mark an ICP lead>. Not ICP: <the answers that mark a non-ICP lead>.
  ```

- **Value proposition** (value-prop):

  ```markdown
  **Value proposition:** <one sentence: how the product is ten times better than the alternatives at solving the ICP's problem>

  **Alternatives:** <what the ICP uses today instead>

  **Measure:** <the one measure on which the product is ten times better than those alternatives>
  ```

- **Outcome positioning** (outcome-positioning):

  ```markdown
  **Outcome:** <growth | risk reduction>: <the one result on the ICP's business that the Value proposition's gain leads to>

  **Show the work:** <the work getting done that a demo or page shows, instead of workflows and features>

  **Context and harness:** <the data, context, and harness that make the product ten times better than the ICP using a general model, or `Not AI-native.` and what it has that the alternatives lack>

  **Integrations:** <MCP, APIs into the systems the ICP runs, and handoffs to and from the humans alongside it>
  ```

- **Pricing** (outcome-pricing):

  ```markdown
  **Platform fee:** <the fixed fee and its billing period, with unlimited seats>

  **Included usage:** <how many units of usage the platform fee includes, and the outcome one unit counts>

  **Overage:** <the price per unit beyond the included usage>
  ```

## Campaigns

Each Campaign (ADR-0003) is a folder `gtm/campaigns/<slug>/`, where `<slug>` is a short name in lowercase words joined by hyphens. The folder holds the Campaign's definition, `campaign.md`, and every Artifact the Campaign needs.

### Lifecycle

A Campaign moves through planned, live, and judged, in that order. Each transition has one owning skill, and only that skill changes the `State:` line:

- **planned**: `plan-campaign` creates the folder and its `campaign.md`.
- **live**: `log-experiment` sets it on the Campaign's first Experiment log entry.
- **judged**: `gtm-retro` sets it when it records the Verdict.

`plan-campaign` writes the definition once and never edits an existing Campaign. A new hypothesis is a new Campaign.

A judged Campaign is closed, whatever its Verdict: it takes no more Experiment log entries or Artifacts, and is never judged again. Testing a kept hypothesis further is a new Campaign.

### Definition

`plan-campaign` creates `campaign.md` in this format. Replace `<today>` with today's date.

```markdown
# Campaign: <a short name for the hypothesis>

Owner: plan-campaign
State: planned
Planned: <today>
Profile date: <the later of the ICP's and the Value proposition's Last revised dates>

**Hypothesis:** <one sentence: which slice of the ICP has which problem, and what they will do if it is true>

**Target signal:** <the numbers the Campaign commits to, each counted from what it produces: Lead magnet downloads, how many of them are ICP leads by their Lead stage answer, Customer conversations, and any free trials started. Missing them kills the hypothesis>

**Scale if:** <the higher numbers, counted the same way, at which the Campaign is worth promoting with paid>

**Publish by:** <YYYY-MM-DD, the day the Lead magnet and the first post are published>

**Judge by:** <YYYY-MM-DD>

**Builds on unconfirmed:** <each `(unconfirmed)` Profile field the Campaign relies on, and what its Customer conversations should find out to settle it, or `Nothing.`>

**Artifacts needed:**

- Lead magnet: <checklist | guide> on <the one specific problem it solves>, with <its distinct point of view>
- Social posts: <how many> on <the ICP's Platform>, each linking to the landing page
- Landing page: asks for name, email, and the Lead stage question
- Warm outbound: to every ICP lead who takes the Lead magnet
```

Exactly one Lead magnet is always listed. Any other line under **Artifacts needed** may be dropped when the Founder decided the Campaign does without it.

**Hypothesis**, **Target signal**, **Publish by**, and **Judge by** are never `(unconfirmed)` and never Open questions: a Campaign without all four is not written. On the judge-by date, a Campaign that misses its Target signal is killed, one that meets it but falls short of **Scale if** is kept, and one that meets **Scale if** is scaled. Any other field may be left open the way a Profile field is (see Open questions above), with the Open questions list at the end of `campaign.md`.

### Verdict

`gtm-retro` judges a `live` Campaign: it changes the line `State: live` to `State: judged` and appends this section at the end of `campaign.md`, after any Open questions list, changing nothing else in the file. Replace `<today>` with today's date.

```markdown
## Verdict

Owner: gtm-retro
Judged: <today>

**Verdict:** <kept | killed | scaled>

**Signal:** <each number in the Target signal and Scale if, beside the total the Founder counted for it>

**Customer conversations:** <how many Customer conversations link to the Campaign, and what they found about its Hypothesis: whether the problem was confirmed, how the Value proposition landed, the objections>

**Revise:** <`Nothing.`, or for each Profile section to revisit (the ICP or the Value proposition the conversations contradict, or an `(unconfirmed)` field they answered): the evidence, and the skill that owns it>
```

The Verdict follows the rule in Definition above, from the totals in **Signal**. Each total is what the Founder counted for the whole Campaign, never a sum of Experiment log entries, which can count the same lead twice. A Verdict records what happened, so it has no `(unconfirmed)` fields and no Open questions list: a Verdict without every field is not written.

## Artifacts

Every demand Artifact belongs to exactly one Campaign (ADR-0003) and is one Markdown file in that Campaign's folder, named after its type, such as `gtm/campaigns/<slug>/lead-magnet.md`. The skill that writes an Artifact owns it; every other skill only reads it. Each Artifact's format below says which Campaign states its skill writes into. An Artifact skill never overwrites or edits an existing Artifact, except that `social-post` appends posts to its `social-posts.md`.

### Header

Every Artifact starts with this header. Replace `<today>` with today's date.

```markdown
# <Artifact type>: <its title>

Owner: <the skill that wrote it>
Campaign: <the Campaign's slug>
Written: <today>
Profile date: <the latest Last revised date among the Profile sections it was built from>
```

Each Artifact's format below names the Profile sections it is built from. An Artifact is **stale** when any of those sections has a `Last revised` date later than its `Profile date`: it was built against an older Profile.

Any field below the header may be left open the way a Profile field is (see Open questions above), with the Open questions list at the end of the file, unless the Artifact's format says otherwise.

### Lead magnet

`lead-magnet` writes `lead-magnet.md`, built from the ICP and the Value proposition, so its `Profile date` is the later of their `Last revised` dates. It is written only into a `planned` Campaign, and a Campaign has exactly one Lead magnet.

```markdown
# Lead magnet: <the title the ICP sees>

Owner: lead-magnet
Campaign: <the Campaign's slug>
Written: <today>
Profile date: <the later of the ICP's and the Value proposition's Last revised dates>

**Form:** <checklist | guide, from the Campaign's Lead magnet line>

**Problem:** <the one specific problem it solves, from the Campaign's Lead magnet line>

**Point of view:** <its distinct point of view, from the Campaign's Lead magnet line>

**Outline:**

1. <item or section title>: <what it teaches, in one or two sentences>
```

**Form**, **Problem**, and **Point of view** are copied from the Campaign, `(unconfirmed)` marker included. **Outline** is never `(unconfirmed)` and never an Open question: a Lead magnet without it is not written.

### Social posts

`social-post` writes `social-posts.md`, built from the ICP and the Value proposition, so its `Profile date` is the later of their `Last revised` dates. It is first written into a `planned` Campaign that already has its Lead magnet. A later run, while the Campaign is `planned` or `live`, appends more posts under an `## Added <today>` heading, numbered on from the last post, and changes nothing above it.

```markdown
# Social posts: <the Lead magnet's title>

Owner: social-post
Campaign: <the Campaign's slug>
Written: <today>
Profile date: <the later of the ICP's and the Value proposition's Last revised dates>

**Link:** <the landing page URL where the Lead magnet is downloaded, or `<landing page link>` until it is live>

## Post 1: <the part of the problem it teaches>

<the post text, ending with a line that sends the reader to the Link to download the Lead magnet>
```

The first write holds one `## Post` heading per post the Campaign's Social posts line asks for; that number is the first batch, not a cap. Every post ends with the Link and never asks the reader to comment to get the Lead magnet. The posts are never `(unconfirmed)` and never Open questions: a file without them is not written.

### Landing page

`landing-page` writes `landing-page.md`, built from the ICP and, through the Lead magnet, the Value proposition, so its `Profile date` is the later of their `Last revised` dates. It is written only into a `planned` Campaign that already has its Lead magnet, once per Campaign.

```markdown
# Landing page: <the Lead magnet's title>

Owner: landing-page
Campaign: <the Campaign's slug>
Written: <today>
Profile date: <the later of the ICP's and the Value proposition's Last revised dates>

**Problem:** <the one specific problem the Lead magnet solves, from the Lead magnet>

**Copy:**

- Headline: <the Lead magnet's title>
- Subhead: <the Lead magnet's Problem>
- Button: Download the <the Lead magnet's Form>
- Thank-you: Check your email for the <the Lead magnet's Form>.

**Fields:**

- Name
- Email
- <the Lead stage question, from the ICP>

**Answers:**

- <an answer from the ICP's Lead stage>: <ICP lead | Not ICP>
```

Everything below the header is copied from the Lead magnet and the ICP, `(unconfirmed)` markers included. The landing page decides nothing of its own, so it has no Open questions list. **Fields** are what the page's form asks for; the Lead magnet's **Form** is whether it is a checklist or a guide.

## Customer conversations

`log-conversation` writes each Customer conversation to its own file in `gtm/conversations/`, named `<YYYY-MM-DD>-<who>.md`: the day the conversation took place, then who it was with, the name in its title, in lowercase words joined by hyphens. When that name is taken, it adds `-2`, `-3`, and so on. It never edits or overwrites an existing conversation file. Every other skill only reads them, as evidence for revising the Profile.

```markdown
# Customer conversation: <who, as the Founder names them>

Owner: log-conversation
Date: <YYYY-MM-DD, the day the conversation took place>
Campaign: <the slug of the Campaign it came from, or `None.`>

**Who:** <their role and company>

**Lead stage:** <their answer to the ICP's Lead stage question, and whether it marks an ICP lead or Not ICP, or `Not asked.`>

**Problem:** <confirmed | not confirmed | not discussed>: <what they said about the ICP's problem, and whether it is urgent and important for them>

**Value proposition:** <resonated | did not resonate | not tested>: <what they said about the claim and the alternatives they use today>

**Budget:** <what they said about budget, or `Not discussed.`>

**Objections:**

- <an objection they raised, or `None.`>

**Their words:**

- "<what they said, word for word as the Founder gives it>"

**Contradicts the Profile:** <`Nothing.`, or for each contradicted section (the ICP or the Value proposition): what in this conversation contradicts it, and the skill that owns it>
```

A conversation file records what happened, so it has no `(unconfirmed)` fields and no Open questions list: a field that was not discussed holds `Not discussed.` (or `not discussed` and `not tested`, the values **Problem** and **Value proposition** list), and a quote the Founder does not have is left out, never invented: **Their words** with no quote holds `None.` **Campaign** may be `None.`: an unlinked conversation is still evidence for the Profile.

## Experiment log

`log-experiment` owns `gtm/experiment-log.md`, creating it with its first entry. Each entry is one trial inside a Campaign: a post, a paid boost, an outbound batch. A new entry is appended at the end of the file, and no entry is ever edited or removed. Every other skill only reads it.

```markdown
# Experiment log

Owner: log-experiment

## <YYYY-MM-DD>: <what was tried, in a few words>

Campaign: <the Campaign's slug>

**Tried:** <what the Founder did, and where>

**Artifact:** <the Artifact file in the Campaign's folder and the part of it used, such as `social-posts.md`, Post 2, or `None.` and what was used instead>

**Signal:** <the numbers the Founder counted, in the terms of the Campaign's Target signal>

**Decision:** <what the Founder decided to do because of this signal, or `None yet.`>

**Customer conversations:**

- [<who>](conversations/<YYYY-MM-DD>-<who>.md)
```

The date in an entry's heading is the day the trial started. Entries stay in the order they were logged. Every entry has a Campaign that was `planned` or `live` when it was logged; the first entry for a `planned` Campaign also changes that Campaign's `State:` line to `live` (see Campaigns above). An entry records what happened, so it has no `(unconfirmed)` fields and no Open questions list: the Date, **Tried**, **Artifact**, and **Signal** are never left open, a **Decision** not yet made holds `None yet.`, and **Customer conversations** with none to link holds `None.`
