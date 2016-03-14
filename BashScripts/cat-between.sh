#!/bin/bash
# Useful for displaying line x to line y.

if (("$#" != 3)); then
    echo "Example: cat-between 1 10000 /usr/share/wordlists/rockyou.txt"
    echo "Hint: pipe to a new file!"
    exit
fi
if (("$1" < 1)); then
  echo "First argument must be greater than 0"
  exit
fi

if (("$2" < "$1")); then
    echo "cat-between (low line number) (high line number) /path/to/file"
    exit
fi

sed -n -e "$1,$2 p" -e "$2 q" $3
