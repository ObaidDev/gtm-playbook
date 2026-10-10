#!/usr/bin/env bash
# Seeds a Profile that has run setup-gtm but never define-icp: the ICP section
# still holds its placeholder, so value-prop has no ICP to write for.
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
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:define-icp`._

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
