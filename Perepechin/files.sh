#!/bin/bash

name_file=$1
name_dir=$2
ext_file=$3

echo "Search file '$1' in directory '$2' with extension file '$3'"
find $name_dir -type f -name "*.$ext_file" > "$name_file"

echo "Sucessful. Result save in $name_file"
