#!/bin/bash

set -euo pipefail

TARGET_DIR="${1:-.}"

if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: '$TARGET_DIR' is not a valid directory." >&2
  exit 1
fi

find "$TARGET_DIR" -type f -name "*.log" -exec rm -v {} +
