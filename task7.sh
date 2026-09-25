#!/bin/bash

dir="$1"

hashes=$(find "$dir" -type f -exec shasum {} + | sort)

echo "$hashes" | cut -c1-40 | uniq -d | while read -r h; do
    echo "Дубликаты:"
    echo "$hashes" | grep "^$h" | cut -c43-
    echo
done
