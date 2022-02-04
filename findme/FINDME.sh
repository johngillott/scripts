#!/usr/bin/env bash


# TODO
# - load services from codeowners files
# - eliminate READMEs from `node_modules`,`` - use gitignore directory to find exclusions...

# shellcheck source=/dev/null
source .env

while read -r SERVICE; do

find "$REPO$SERVICE" -type d -name node_modules -prune -o -type f -name "*.md" -print

done <<<"$(cut -d' ' -f 1 < .services)"