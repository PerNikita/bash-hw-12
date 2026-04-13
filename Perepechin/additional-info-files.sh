#!/bin/bash

directory=$1

for file in $(find $directory -type f 2>/dev/null); do
	stat -c "Size: %s Premission: %A File: %n" "$file"
done
