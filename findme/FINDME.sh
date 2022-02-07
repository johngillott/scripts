#!/usr/bin/env bash

# TODO
# - load services from codeowners file

# shellcheck source=/dev/null
source .env

SERVICES="$(cut -d' ' -f 1 < .services | tr '\n' '|')"
# Shell Parameter Expansion
# https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
# https://unix.stackexchange.com/a/310243
SERVICES="${SERVICES%?}"

# https://marc.info/?l=git&m=120956110207686&w=2
git --git-dir="$REPO/.git" --work-tree="$REPO" ls-files --cached --modified --other --exclude-standard |  while read -r line; do echo "$REPO/$line"; done | grep --extended-regexp '.md$' | grep --extended-regexp "$SERVICES"