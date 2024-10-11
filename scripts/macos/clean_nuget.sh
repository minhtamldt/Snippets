#!/bin/bash

# DEFINE VARIABLES
SOURCE_CORE=$1
NUGET_PATH=$2

# IMPORT CORE SCRIPTS
source $SOURCE_CORE

# MAIN SCRIPT

## Check if the path is empty
if [ -z $NUGET_PATH ]; then
  print_error "$NUGET_PATH is empty. Please provide the path of the nuget folder."
  exit 1
fi

## Check if the nuget folder exists
if [ -d $NUGET_PATH ]; then
  print_information "Deleting the $NUGET_PATH folder"
  rm -r $NUGET_PATH
  print_success "The $NUGET_PATH folder has been deleted successfully"
else
  print_error "The $NUGET_PATH folder does not exist"
fi




