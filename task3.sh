#!/bin/bash

text="$*"
border=$(printf '%*s' "$(( ${#text} + 2 ))" '' | tr ' ' '-')

echo "+${border}+"
echo "| ${text} |"
echo "+${border}+"
