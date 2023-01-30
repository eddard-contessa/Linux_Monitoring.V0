#!/bin/bash

read -p "do you want to write the data to a file? Y/N   "
case $REPLY in
y) exec ./exportData.sh 1>outfile ;;
Y) exec ./exportData.sh 1>outfile ;;
*) exec ./exportData.sh ;;
esac
