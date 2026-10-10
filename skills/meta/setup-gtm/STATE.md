# The `gtm/` state folder

All GTM state for one product lives in a single `gtm/` folder at the Workspace root, so the Founder can version it, back it up, or share it with a cofounder.

```
gtm/
├── profile.md              # the Profile (created by setup-gtm)
├── campaigns/<slug>/       # one folder per Campaign: its definition and its Artifacts
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
