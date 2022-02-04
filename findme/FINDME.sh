#!/usr/bin/env bash

# https://stackoverflow.com/questions/556405/what-do-real-user-and-sys-mean-in-the-output-of-time1/556411#556411
# time ./FINDME.sh

# v0        12.96 real         0.53 user         4.20 sys

# TODO
# - load services from codeowners files
# - eliminate READMEs from `node_modules`,`` - use gitignore directory to find exclusions...

# shellcheck source=/dev/null
source .env

while read -r SERVICE; do

find "$REPO$SERVICE" -type d -name node_modules -prune -o -type f -name "*.md" -print

done <<<"$(cut -d' ' -f 1 < .services)"