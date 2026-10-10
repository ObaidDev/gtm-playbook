#!/usr/bin/env bash
# Seeds a Profile with every section dated in the past: Product, ICP, Value
# proposition, and Outcome positioning filled in, Pricing still empty.
set -euo pipefail
mkdir -p gtm
cat > gtm/profile.md <<'PROFILE'
# GTM Profile

## Product

Owner: setup-gtm
Last revised: 2026-01-05

**Product:** Shiplog uses AI to turn merged pull requests into customer-facing changelogs for B2B SaaS teams.

**Product stage:** beta

**Sales motion:** product-led

## ICP

Owner: define-icp
Last revised: 2026-01-20

**Who:** Heads of product at 20 to 200 person B2B SaaS companies who ship weekly.

**Segment:** mid-market

**Urgent and important problem:** Customers churn because they never hear what changed, and writing release notes by hand eats a day a week.

**Early adopters:** Heads of product at SaaS companies that ship daily and already write a changelog by hand every week.

**Platform:** LinkedIn

**Lead stage:** How do you tell customers what shipped today? ICP lead: we write release notes or a changelog by hand. Not ICP: we do not tell customers, or a tool already writes it.

## Value proposition

Owner: value-prop
Last revised: 2026-02-12

**Value proposition:** Shiplog writes your customer changelog from merged PRs in a minute instead of a day, so product teams tell every customer what changed without losing a day a week.

**Alternatives:** Writing release notes by hand from Jira tickets.

**Measure:** Time to publish the changelog: a minute instead of a day a week.

## Outcome positioning

Owner: outcome-positioning
Last revised: 2026-03-02

**Outcome:** Risk reduction: less churn, because every customer hears what changed the day it ships.

**Show the work:** A finished changelog email landing in a customer's inbox minutes after a merge.

**Context and harness:** Reads the linked tickets and past changelogs, and checks every entry against what merged.

**Integrations:** GitHub, Linear, an MCP server, and a Slack approval by the head of product.

## Pricing

Owner: outcome-pricing
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-pricing`._
PROFILE
