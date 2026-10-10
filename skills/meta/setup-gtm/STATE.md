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

An empty section holds a single placeholder line, starting `_Not defined yet.`, naming the skill that fills it. A skill that needs a section still holding its placeholder stops and tells the Founder to run that skill.

### Template

Sections appear in this order, with these exact headings. Replace `<today>` with today's date.

```markdown
# GTM Profile

## Product

Owner: setup-gtm
Last revised: <today>

**Product:** <what the product does and for whom, in one or two sentences>

**Product stage:** <pre-product | beta | revenue>

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
