#!/bin/bash
# Purpose: install a few packages

logfile=$(date +%Y%m%d%H%M%S)_log.txt
exec 1> >(tee -a "$logfile") 2>&1

set -e
set -o pipefail

os=$(uname -s)
linux_pkg_managers=(apt-get yum pacman)
need=("fzf", "vim", "tmux", "figlet", "toilet", "lolcat", "nyancat", "ranger", "lolcat", "aafire")

for i in "${need[@]}"; do
  if [ "$os" == "Darwin" ]; then
    brew install "$i"
  elif [ "$os" == "Linux" ]; then
    for j in "${linux_pkg_managers[@]}"; do
      if [ -x "$(command -v $j)" ]; then
        if [ "$j" == "pacman" ]; then
          $j -Sy "$i"
        elif [ "$j" == "yum" || "$j" == "apt-get" ]; then
          $j -y install "$i"
        fi
      fi
    done
  else
    echo "Unsupported OS"
    exit 1
  fi
done

if [ -f "$logfile" ]; then
  echo "Log file created at $logfile"
  echo "Do you want to view it? (y/n)"
  read -r answer
  if [ "$answer" == "y" ]; then
    cat "$logfile"
  fi
  echo "Do you want to delete it? (y/n)"
  read -r answer
  if [ "$answer" == "y" ]; then
    rm "$logfile"
  fi
fi
