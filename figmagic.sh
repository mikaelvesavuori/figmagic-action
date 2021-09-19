#!/bin/bash

# Set variables for files to check for
URL="$1"
TOKEN="$2"
CONFIG_FILE="figmagic.json"

# These variables must exist
if [ -z "$URL" ]; then
  echo "ERROR: The 'Figmagic GitHub Action' requires that you provide 'figma-url' and 'figma-token' values, but these could not be found..."
  exit 1
fi

if [ -z "$TOKEN" ]; then
  echo "ERROR: The 'Figmagic GitHub Action' requires that you provide 'figma-url' and 'figma-token' values, but these could not be found..."
  exit 1
fi

# Install Figmagic
npm install figmagic

# Init base config if one does not exist
if [ ! -f $CONFIG_FILE ]; then
  echo "INFO: Did not find a 'figmagic.json' configuration file, so Figmagic will generate one with default settings..."
  npx figmagic init
fi

npx figmagic --token $TOKEN --url $URL

exit 0