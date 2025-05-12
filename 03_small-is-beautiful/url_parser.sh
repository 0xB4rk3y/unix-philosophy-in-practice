#!/bin/bash

set -euo pipefail

URL="${1:-http://example.com}"

# Extracting components using bash parameter expansion
protocol=$(echo "$URL" | awk -F "://" '{print $1}')
domain=$(echo "$URL" | awk -F "://" '{print $2}' | awk -F "/" '{print $1}')
path=$(echo "$URL" | awk -F "/" '{print substr($0, index($0,$2))}')

echo "URL: $URL"
echo "Protocol: $protocol"
echo "Domain: $domain"
echo "Path: $path"
