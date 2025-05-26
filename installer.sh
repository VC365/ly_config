#!/bin/bash

set -e

if [ ! -d "./ly" ]; then
  echo "Error: 'ly' directory not found in the current path."
  exit 1
fi

if [ -d "/etc/ly" ]; then
  sudo rm -rf /etc/ly || { echo "Error: Failed to remove /etc/ly."; exit 1; }
fi

sudo cp -r ./ly /etc/ || { echo "Error: Failed to copy 'ly' directory to /etc/."; exit 1; }
