#!/bin/bash


dir="$1"

for file in "$dir"/*.c "$dir"/*.js "$dir"/*.py; do
    case "$file" in
	*.py) pattern='^[[:space:]]*#' ;;
	*)    pattern='^[[:space:]]*(//|/\*)' ;;
    esac

    if head -n 1 "$file" | grep -q "$pattern"; then 
	echo "$file: есть комментарий"
    else
	echo "$file: нет комментария"
    fi
done
