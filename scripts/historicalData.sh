#!/bin/bash

# exit when any command fails
set -e
# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo; echo "\"${last_command}\" command filed with exit code $?."' EXIT


LOGFILE="logs/$(date +%Y%m%d-%H%M)_historicalData.log"

# python dependencies, enter and log source folder
source  ./py3data/bin/activate
cd src
echo $(pwd) | tee -a ../$LOGFILE

python historicalData.py | tee -a ../$LOGFILE

echo done.


