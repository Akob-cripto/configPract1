#!/bin/bash

in="$1"
out="$2"

tab=$(printf '\t')
sed "s/    /${tab}/g" "$in" > "$out"

echo "Готово: $in → $out"
