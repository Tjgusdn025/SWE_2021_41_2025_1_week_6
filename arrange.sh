#!/bin/bash

for letter in {a..z}; do
    mkdir -p "$letter"
done

for file in files/*.txt; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')
        mv "$file" "$first_char/"
    fi
done
