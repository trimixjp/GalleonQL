#!/usr/bin/env bash
#
# setup-labels.sh — create/update the issue labels for the GraftQL public tracker.
#
# Run with the `trimixjp` account active in gh (verify with `gh auth status`).
# `gh label create --force` is idempotent: it creates a label if missing,
# or updates its color/description if it already exists.
#
# Usage:
#   bash scripts/setup-labels.sh
#
set -euo pipefail

create_label() {
  local name="$1" color="$2" description="$3"
  gh label create "$name" --color "$color" --description "$description" --force
}

create_label "bug"              "d73a4a" "Something isn't working as expected"
create_label "enhancement"      "a2eeef" "New feature or improvement request"
create_label "needs-repro"      "fbca04" "More information / reproduction steps needed"
create_label "question"         "d876e3" "A question rather than a bug or request"
create_label "wontfix"          "ffffff" "This will not be worked on"
create_label "duplicate"        "cfd3d7" "This issue or request already exists"
create_label "fixed"            "0e8a16" "Resolved in a released version"
create_label "language-request" "5319e7" "Request for a new UI language"

echo "Labels created/updated."
