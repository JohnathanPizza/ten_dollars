#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <fname>"
    exit 1
fi

list=""

while IFS= read -r line || [[ -n "$line" ]]; do
	if [ "$line" = "$1" ]; then
		list="$list"'romprogs/adjs.cvm '
	fi
	list="$list$line "
	if [ "$line" = "$1" ]; then
		list="$list"'romprogs/adje.cvm '
	fi
done < 'filelist'

declare -a args

read -r -a args <<< "$list"

crab -xa -b0x8000 -s0x8000 "${args[@]}"

adjstr=$(xxd -p -c 2 out.adj | tr '[:lower:]' '[:upper:]' | sed "s/^/\$0X/g")

echo "$adjstr"
