#!/usr/bin/env bash
# Seeds a Workspace that describes the product but has never run setup-gtm:
# no gtm/ folder, so define-icp has no Profile to write into.
set -euo pipefail
cat > README.md <<'README'
# Shiplog

Shiplog turns merged pull requests into customer-facing changelogs for B2B SaaS teams.
README
