#!/bin/bash
# It uses `tar` and `gzip` to create a compressed archive.

set -euo pipefail

if [ $# -eq 0 ]; then
  echo "Usage: $0 <file1> <file2> ... <archive_name.tar.gz>"
  exit 1
fi

ARCHIVE_NAME="${!#}"  # Last argument is the archive name
FILES="${@:1:$(($#-1))}"  # All but the last argument are files to compress

tar -czf "$ARCHIVE_NAME" $FILES
echo "Created archive: $ARCHIVE_NAME"
