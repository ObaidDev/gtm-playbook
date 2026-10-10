#!/usr/bin/env bash
# Seeds a Profile that has run define-icp but never value-prop: the Value
# proposition section still holds its placeholder, so outcome-positioning has
# no claim to frame.
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
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:value-prop`._

## Outcome positioning

Owner: outcome-positioning
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-positioning`._

## Pricing

Owner: outcome-pricing
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-pricing`._
PROFILE
