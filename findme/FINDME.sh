#!/usr/bin/env bash

# https://stackoverflow.com/questions/556405/what-do-real-user-and-sys-mean-in-the-output-of-time1/556411#556411
# time ./FINDME.sh

# v0        12.96 real         0.53 user         4.20 sys

# TODO
# - load services from codeowners files
# - eliminate READMEs from `node_modules`,`` - use gitignore directory to find exclusions...

# shellcheck source=/dev/null
source .env

# while read -r SERVICE; do


# git --git-dir=/mycode/.git --work-tree=/mycode status
# https://marc.info/?l=git&m=120956110207686&w=2
git --git-dir="$REPO/.git" --work-tree="$REPO" ls-files --cached --modified --other --exclude-standard | grep --extended-regexp '.md'

# IGNORE=$(find "$REPO$SERVICE" -type f -name ".gitignore" -exec cat {} + | grep --invert-match --extended-regexp '#|^[[:space:]]*$' | tr '\n' ' ')
# echo "$IGNORE"

# find "$REPO$SERVICE" -type f -name ".gitignore" -exec cat {} + | grep --invert-match --extended-regexp '#|^[[:space:]]*$'


# find "$REPO$SERVICE" -type f -name ".gitignore" -exec bash -c 'echo "$i"' \; | grep --invert-match --extended-regexp '#|^[[:space:]]*$'

# find "$REPO$SERVICE" -type d -name "$IGNORE" -prune -o -type f -name "*.md" -print

# done <<<"$(cut -d' ' -f 1 < .services)"