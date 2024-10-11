#!/bin/bash

# DEFINE VARIABLES
SOURCE_CORE=$1
PACKAGE_NAME=$2

# IMPORT CORE SCRIPTS
source $SOURCE_CORE

# MAIN SCRIPT

## Check if the device is connected
adb devices | grep "device$" > /dev/null
if [ $? -ne 0 ]; then
  print_error "Device is not connected"
  exit 1
fi

## Uninstall the app
adb uninstall $PACKAGE_NAME
if [ $? -eq 0 ]; then
  print_success "Uninstall sucessfully : $PACKAGE_NAME"
else
  print_error "Uninstall failed : $PACKAGE_NAME"
fi

