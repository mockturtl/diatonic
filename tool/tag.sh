#!/bin/bash -e

file="pubspec.yaml"
version=$(sed -n "s|^version: \([0-9]\.[0-9]\.[0-9].*\)\s*$|\1|p" $file)

cat<<-EOF
  Tagging version $version...
EOF

git ap $file

git ci -m "[ann] v$version"

git tag "$version"

git push && git push --tags
