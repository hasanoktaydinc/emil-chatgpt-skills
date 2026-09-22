#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_URL="https://github.com/emilkowalski/skills.git"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

git clone --depth 1 "$UPSTREAM_URL" "$TMP_DIR/emil-source"

rm -rf plugins/emil-skills/skills
cp -R "$TMP_DIR/emil-source/skills" plugins/emil-skills/skills

echo "Synced Emil Kowalski skills into plugins/emil-skills/skills"
