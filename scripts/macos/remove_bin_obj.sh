#!/bin/bash

# DEFINE VARIABLES
SOURCE_CORE=$1
ROOT_PATH=$2

# IMPORT CORE SCRIPTS
source $SOURCE_CORE

# MAIN SCRIPT

## check if the root path is empty
if [ -z "$ROOT_PATH" ]; then
  print_error "$ROOT_PATH is empty. Please provide the root path of the project."
  exit 1
fi

## check if the root path is a directory
find "$ROOT_PATH" \( -name "bin" -o -name "obj" \) -type d -prune -exec echo "Deleting: {}" \; -exec rm -rf {} +

## print success message
print_success "Deleted 'bin' and 'obj' folders successfully"


