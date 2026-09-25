#!/bin/bash

ext="$1"
dir="$2"
archive="archive_${ext}.tar"

count=$(find "$dir" -type f -name "*.$ext" | wc -l | tr -d " ")

if [ "$count" -eq 0 ]; then
    echo "Файлы *.$ext не найдены"
    exit 1
fi

find "$dir" -type f -name "*.$ext" -print0 | tar -cf "$archive" --null -T -

echo "Упаковано файлов: $count → $archive"

