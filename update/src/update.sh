#!/bin/bash

function UPDATE() {
    clear
    updt=1
    if [[ $updt -eq 1 ]]; then
        git clone https://github.com/tkemza/zping.git # Git clone new version
    else
        # Get error message
        sleep 2.3
        printf "Error while downloading update."
    fi
    clear
}