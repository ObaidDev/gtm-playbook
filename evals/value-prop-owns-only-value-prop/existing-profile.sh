#!/usr/bin/env bash
# Seeds a Profile with every section dated in the past: Product and ICP filled
# in, Value proposition still empty, Outcome positioning filled, Pricing empty.
set -euo pipefail
mkdir -p gtm
cat > gtm/profile.md <<'PROFILE'
# GTM Profile

## Product

Owner: setup-gtm
Last revised: 2026-01-05

**Product:** Shiplog turns merged pull requests into customer-facing changelogs for B2B SaaS teams.

**Product stage:** beta

## ICP

Owner: define-icp
Last revised: 2026-01-20

**Who:** Heads of product at 20 to 200 person B2B SaaS companies who ship weekly.

**Urgent and important problem:** Customers churn because they never hear what changed, and writing release notes by hand eats a day a week.

**Platform:** LinkedIn

## Value proposition

Owner: value-prop
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:value-prop`._

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
