#!/bin/bash

read -p "Enter the height of the diamond: " height

if ((height % 2 == 0 )); then
    echo "Please enter an odd number."
    exit 1
fi

half_height=$(( (height+1)/2 ))


for ((i = 1; i <= half_height; i++)); do
    for ((j = 1; j <= height - i; j++)); do
        echo -n " "
    done
    for ((k = 1; k <= 2*i-1; k++)); do
        echo -n "*"
    done
    echo
done

for ((i = half_height - 1; i >= 1; i--)); do
    for ((j = 1; j <= height - i; j++)); do
        echo -n " "
    done
    for ((k = 1; k <= 2*i-1; k++)); do
        echo -n "*"
    done
    echo
done

