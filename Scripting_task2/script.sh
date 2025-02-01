#!/bin/bash

file="input.txt"

temp_file="temp.txt"

awk 'NR < 5 { print; next } /welcome/ { gsub(/give/, "learning") } { print }' "$file" > "$temp_file"

mv "$temp_file" "$file"

echo "Replacement complete. Updated file:"
cat "$file"
