#!/bin/bash

for file in src-gen/$1_*Context.puml; do
    if [ -e "$file" ]; then
        plantuml -tpng -pipe < "$file" > tmp.png
        cp tmp.png "$(basename "$file" .puml).png"
    fi
done