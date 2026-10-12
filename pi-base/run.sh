#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder name>"
    exit 1
fi

sbx run docker.io/sbx/pi-kit:latest --kit clutchlabsapp/pi-base:1.0 --kit-args-file ~/pi.env --name pi-$1 $1