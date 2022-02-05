# overview

`findme` can be used to find README/markdown files within monoreposities. It is generally faster and more useful than using `find` as it will only directories tracked in the repository, ignoring READMEs located in build dependencies i.e. `node_modules`.

Usage:

`REPO="~/dev/foobar" findme.sh`

Optionally: you can filter services by copying a code owners file from GitHub to `findme/.services`
