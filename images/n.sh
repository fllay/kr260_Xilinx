#!/bin/bash

for file in *; do
    if [ -f "$file" ]; then
        creation_time=$(stat -c %Y "$file")
        new_filename="v${creation_time}.png"
        mv "$file" "$new_filename"
    fi
done
