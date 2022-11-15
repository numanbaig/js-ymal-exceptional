#!/bin/sh

if test $# -eq 0; then
  echo "No branch/tag names provided"
  exit 1
fi

root_dir="$(dirname $0)"

for branch in $@; do
  impl_dir="$root_dir/implementations/js-yaml-chatdaddy-$branch"

  if test -e "$impl_dir"; then
    echo "$impl_dir already exists; skipping"
  else
    git clone --branch "$branch" --depth 1 https://github.com/numanbaig/js-ymal-exceptional.git "$impl_dir"
  fi
done
