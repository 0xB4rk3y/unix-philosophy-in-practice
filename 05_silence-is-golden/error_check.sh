#!/bin/bash
# If all commands succeed, it produces no output, emphasizing that silence is golden.

set -euo pipefail

TARGET_DIR="${1:-.}"

# Attempt to list the files in the given directory
ls "$TARGET_DIR" > /dev/null

if [ $? -ne 0 ]; then
  echo "Error: Could not list files in directory '$TARGET_DIR'" >&2
  exit 1
fi
