#!/bin/bash

set -euo pipefail

CPU_INFO=$(cat /proc/cpuinfo)
MEM_INFO=$(cat /proc/meminfo)

echo "CPU Info:"
echo "$CPU_INFO" | grep "model name"
echo

echo "Memory Info:"
echo "$MEM_INFO" | grep "MemTotal"
