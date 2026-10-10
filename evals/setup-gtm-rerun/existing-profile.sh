#!/usr/bin/env bash
# Seeds a Profile written months ago: ICP and Value proposition already filled
# in by their owning skills, Pricing missing (added to the template later).
set -euo pipefail
mkdir -p gtm
cat > gtm/profile.md <<'PROFILE'
# GTM Profile

## Product

Owner: setup-gtm
Last revised: 2026-01-05

**Product:** Shiplog turns merged pull requests into customer-facing changelogs for B2B SaaS teams.

**Product stage:** pre-product

## ICP

Owner: define-icp
Last revised: 2026-02-10

**Who:** Heads of product at 20 to 200 person B2B SaaS companies who ship weekly.

**Urgent and important problem:** Customers churn because they never hear what changed.

**Platform:** LinkedIn

## Value proposition

Owner: value-prop
Last revised: 2026-02-12

**Value proposition:** Shiplog writes your customer changelog from merged PRs in seconds, so product teams stop losing a day a week to release notes.

**Alternatives:** Writing release notes by hand.

**Measure:** Time to publish the changelog: seconds instead of a day a week.

## Outcome positioning

Owner: outcome-positioning
Last revised: 2026-01-05

_Not defined yet. Run `/outcome-positioning`._
PROFILE
