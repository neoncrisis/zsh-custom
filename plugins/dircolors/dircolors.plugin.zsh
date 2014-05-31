#!/bin/sh

# Get the full directory path to this script
cd $(dirname "$0")
BASEDIR=$(pwd -L)
cd - > /dev/null

# Determine the theme to use
THEME=${DIRCOLORS_THEME:-'ansi-dark'}
FILE="$BASEDIR/themes/dircolors.$THEME"

# Finally do the smart things
if [[ -r "$FILE" ]]; then
  eval $(dircolors "$FILE")
fi
