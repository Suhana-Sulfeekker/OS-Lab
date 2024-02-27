#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "Directory '$1' not found."
    exit 1
fi

echo "Files:"

for file in "$1"/*; do
    if [ -f "$file" ]; then
        echo "$file"
    fi
done

echo

echo "Directories:"

for dir in "$1"/*; do
    if [ -d "$dir" ]; then
        echo "$dir"
    fi
done

