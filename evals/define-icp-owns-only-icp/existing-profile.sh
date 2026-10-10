#!/usr/bin/env bash
# Seeds a Profile with every section dated in the past: Product and Value
# proposition filled in, ICP still empty, the rest empty.
set -euo pipefail
mkdir -p gtm
cat > gtm/profile.md <<'PROFILE'
# GTM Profile

## Product

Owner: setup-gtm
Last revised: 2026-01-05

**Product:** Shiplog turns merged pull requests into customer-facing changelogs for B2B SaaS teams.

**Product stage:** beta

**Sales motion:** product-led

## ICP

Owner: define-icp
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:define-icp`._

## Value proposition

Owner: value-prop
Last revised: 2026-02-12

**Value proposition:** Shiplog writes your customer changelog from merged PRs in seconds, so product teams stop losing a day a week to release notes.

**Alternatives:** Writing release notes by hand.

**Measure:** Time to publish the changelog: seconds instead of a day a week.

## Outcome positioning

Owner: outcome-positioning
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-positioning`._

## Pricing

Owner: outcome-pricing
Last revised: 2026-01-05

_Not defined yet. Run `/gtm-playbook:outcome-pricing`._
PROFILE
