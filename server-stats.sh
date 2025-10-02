#!/bin/bash
# The goal of this project is to script analysis performance stats

set -u  # optional: treat unset vars as errors

# Ensure Homebrew bin is in PATH (Apple Silicon first, then Intel)
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

echo Activating Analysis Performance

sleep 3

echo One Moment Please...

sleep 3

#disk usage
echo DISK USAGE
sleep 1 
df -h

sleep 5 

#memory usage
echo UPTIME
sleep 1
uptime

sleep 3

# CPU usage (auto-exit after ~10s) - NOT READY yet
echo "CPU USAGE"
sleep 1

if command -v htop >/dev/null 2>&1; then
  # 10 iterations, 1s between updates
  htop -n 10 -d 10
else
  echo "htop not found, using macOS top snapshot instead..."
  # 5 samples, 2s apart (~10s total)
  top -l 5 -s 2
fi

