# Server Status Script

A simple Bash script to check basic system performance on macOS.

## Features
- Show disk usage (`df -h`)
- Show uptime and load averages (`uptime`)
- Show CPU usage (~10 seconds)  
  - Uses `htop` if installed  
  - Falls back to macOS `top`

## Requirements
- macOS with Bash or Zsh
- Optional: [htop](https://htop.dev/) for CPU monitoring  
  Install with Homebrew:
  ```bash
  brew install htop

Usage

# Make the script executable
chmod +x server-stats.sh

# Run the script
./server-stats.sh

Example Output

DISK USAGE
Filesystem      Size   Used  Avail Capacity Mounted on
/dev/disk3s5s1  466G    18G   240G     7%   /

UPTIME
14:03  up 3 days,  5:12, 2 users, load averages: 2.01 1.86 1.72

CPU USAGE
htop not found, using macOS top snapshot instead...

License

MIT

