#!/bin/bash

# DEFINE COLORS 
RED_COLOR='\033[1;31m'
YELLOW_COLOR='\033[1;33m'
GREEN_COLOR='\033[1;32m'
RESET_COLOR='\033[0m'

# SYMBOL
BREAK_LINE="\n"

print_information() {
  echo -e "$YELLOW_COLOR 🚗 ▶️ $1 $BREAK_LINE"
}

print_error() {
  echo -e "$RED_COLOR ❌ ▶️ $1 $BREAK_LINE"
}

print_success() {
  echo -e "$GREEN_COLOR ✅ ▶️ $1 $BREAK_LINE"
}


