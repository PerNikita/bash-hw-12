#!/bin/bash

string=$1
directory=$2
result_dir=$(find / -type d -name $directory)
result_files=$(find $result_dir -type f) 

if [ -z $result_dir ]; then
	echo "Директории $directory не существует"
	exit 1
fi

for file in $result_files; do
	result=$(grep $string $file)
	if grep -q -R $string $file; then
		echo -e "В файле $file найдены строки:\n$result \nРазмер файла $(stat -c '%s' $file)"
	else
		echo "Строка $string в файле $file не найдена"
		
	fi
done
