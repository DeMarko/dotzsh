#!/usr/bin/env bash

# SEE YOU SPACE COWBOY by DANIEL REHN (danielrehn.com)
# Displays a timeless message in your terminal with cosmic color effects

# Usage: add "sh ~/seeyouspacecowboy.sh; sleep 2" to .bash_logout (or similar) in your home directory
# (adjust the sleep variable to display the message for more seconds)

# Cosmic color sequence

ESC_SEQ="\x1b[38;5;"
COL_01=$ESC_SEQ"160;01m"
COL_02=$ESC_SEQ"196;01m"
COL_03=$ESC_SEQ"202;01m"
COL_04=$ESC_SEQ"208;01m"
COL_05=$ESC_SEQ"214;01m"
COL_06=$ESC_SEQ"220;01m"
COL_07=$ESC_SEQ"226;01m"
COL_08=$ESC_SEQ"190;01m"
COL_09=$ESC_SEQ"154;01m"
COL_10=$ESC_SEQ"118;01m"
COL_11=$ESC_SEQ"046;01m"
COL_12=$ESC_SEQ"047;01m"
COL_13=$ESC_SEQ"048;01m"
COL_14=$ESC_SEQ"049;01m"
COL_15=$ESC_SEQ"051;01m"
COL_16=$ESC_SEQ"039;01m"
COL_17=$ESC_SEQ"027;01m"
COL_18=$ESC_SEQ"021;01m"
COL_19=$ESC_SEQ"021;01m"
COL_20=$ESC_SEQ"057;01m"
COL_21=$ESC_SEQ"093;01m"


# Timeless message

echo -e  "$COL_01  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888  "
echo -e  "$COL_02 d88P  Y88b 888        888              Y88b d88P  d88P\" \"Y88b 888     888  "
echo -e  "$COL_03  \"Y888b.   8888888    8888888            Y888P    888     888 888     888  "
echo -e  "$COL_04     \"Y88b. 888        888                 888     888     888 888     888  "
echo -e  "$COL_05       \"888 888        888                 888     888     888 888     888  "
echo -e  "$COL_06 Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P  "
echo -e  "$COL_07  \"Y8888P\"  8888888888 8888888888          888      \"Y88888P\"   \"Y88888P\"  "
echo -e  "$COL_08  .d8888b.  8888888b.     d8888  .d8888b.  8888888888    "
echo -e  "$COL_09 d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888       "
echo -e  "$COL_10  \"Y888b.   888   d88P d88P 888 888        8888888    "
echo -e  "$COL_11     \"Y88b. 8888888P\" d88P  888 888        888   "
echo -e  "$COL_12       \"888 888      d88P   888 888    888 888    "
echo -e  "$COL_13 Y88b  d88P 888     d8888888888 Y88b  d88P 888  "
echo -e  "$COL_14  \"Y8888P\"  888    d88P     888  \"Y8888P\"  8888888888     "
echo -e  "$COL_15  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P     "
echo -e  "$COL_16 d88P  Y88b d88P\" \"Y88b 888   o   888 888  \"88b  d88P\" \"Y88b Y88b d88P   "
echo -e  "$COL_17 888        888     888 888 d888b 888 8888888K.  888     888   Y888P    "
echo -e  "$COL_18 888        888     888 888d88888b888 888  \"Y88b 888     888    888    "
echo -e  "$COL_19 888    888 888     888 88888P Y88888 888    888 888     888    888  "
echo -e  "$COL_20 Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888  "
echo -e  "$COL_21  \"Y8888P\"   \"Y88888P\"  888P     Y888 8888888P\"   \"Y88888P\"     888"
tput sgr0 # Reset colors to "normal"
