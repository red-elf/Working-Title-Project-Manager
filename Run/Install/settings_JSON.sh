#!/bin/bash

HERE=$(pwd)

if [ -z "$SUBMODULES_HOME" ]; then

  echo "ERROR: The SUBMODULES_HOME is not defined"
  exit 1
fi

DIR_TOOLKIT="$SUBMODULES_HOME/Software-Toolkit"

sh "$DIR_TOOLKIT/Utils/VSCode/extend_settings_json.sh" "$HERE/Recipes/settings.json.sh"