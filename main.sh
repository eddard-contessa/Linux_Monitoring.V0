#!/bin/bash

if [ $# != 0 ]; then
        echo "No parameters passed"
else
        chmod +x ./outFile.sh
        ./outFile.sh
fi