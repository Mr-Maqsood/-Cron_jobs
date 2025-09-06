#!/bin/bash

threshold=80
usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

if [ "$usage" -gt "$threshold" ]; then
    echo "Disk usage is critical: $usage%"
fi
echo "backup is completed: $usage"