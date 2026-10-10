#!/usr/bin/env bash
# Seeds a Profile with every section dated in the past: Product, ICP, and Value
# proposition filled in, Outcome positioning still empty, Pricing empty.
set -euo pipefail
mkdir -p gtm
cat > gtm/profile.md <<'PROFILE'
# GTM Profile

## Product

Owner: setup-gtm
Last revised: 2026-01-05

**Product:** Shiplog uses AI to turn merged pull requests into customer-facing changelogs for B2B SaaS teams.

**Product stage:** beta

## ICP

Owner: define-icp
Last revised: 2026-01-20

**Who:** Heads of product at 20 to 200 person B2B SaaS companies who ship weekly.

**Urgent and important problem:** Customers churn because they never hear what changed, and writing release notes by hand eats a day a week.

**Platform:** LinkedIn

## Value proposition

Owner: value-prop
Last revised: 2026-02-12

**Value proposition:** Shiplog writes your customer changelog from merged PRs in a minute instead of a day, so product teams tell every customer what changed without losing a day a week.

**Alternatives:** Writing release notes by hand from Jira tickets.

**Measure:** Time to publish the changelog: a minute instead of a day a week.

## Outcome positioning

Owner: outcome-positioning
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-positioning`._

## Pricing

Owner: outcome-pricing
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-pricing`._
PROFILE
