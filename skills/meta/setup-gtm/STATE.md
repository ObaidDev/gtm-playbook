# The `gtm/` state folder

All GTM state for one product lives in a single `gtm/` folder at the Workspace root, so the Founder can version it, back it up, or share it with a cofounder.

```
gtm/
├── profile.md              # the Profile (created by setup-gtm)
├── campaigns/<slug>/       # one folder per Campaign: campaign.md and its Artifacts
├── conversations/          # one file per Customer conversation, named <YYYY-MM-DD>-<who>.md
└── experiment-log.md       # trials inside Campaigns, each with its signal
```

`setup-gtm` creates only `profile.md`. Each other path is created by the skill that owns it, the first time it has something to write.

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

## Artifacts

Every demand Artifact belongs to exactly one Campaign (ADR-0003) and is one Markdown file in that Campaign's folder, named after its type, such as `gtm/campaigns/<slug>/lead-magnet.md`. The skill that writes an Artifact owns it; every other skill only reads it. Each Artifact's format below says which Campaign states its skill writes into. An Artifact skill never overwrites or edits an existing Artifact.

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

`social-post` writes `social-posts.md`, built from the ICP and the Value proposition, so its `Profile date` is the later of their `Last revised` dates. It is written only into a `planned` Campaign that already has its Lead magnet, once per Campaign.

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

There is one `## Post` heading per post the Campaign's Social posts line asks for. Every post ends with the Link and never asks the reader to comment to get the Lead magnet. The posts are never `(unconfirmed)` and never Open questions: a file without them is not written.

### Landing page

`landing-page` writes `landing-page.md`, built from the ICP and, through the Lead magnet, the Value proposition, so its `Profile date` is the later of their `Last revised` dates. It is written only into a `planned` Campaign that already has its Lead magnet, once per Campaign.

```markdown
# Landing page: <the Lead magnet's title>

Owner: landing-page
Campaign: <the Campaign's slug>
Written: <today>
Profile date: <the later of the ICP's and the Value proposition's Last revised dates>

**Problem:** <the one specific problem the Lead magnet solves, from the Lead magnet>

**Form:**

- Name
- Email
- <the Lead stage question, from the ICP>

**Answers:**

- <an answer from the ICP's Lead stage>: <ICP lead | Not ICP>
```

Everything below the header is copied from the Lead magnet and the ICP, `(unconfirmed)` markers included. The landing page decides nothing of its own, so it has no Open questions list.
