#!/bin/bash

clear
echo "Начало скрипта...."

if [ $# = 0 ]; then
	echo "Введите название урока: "
	read file_less
else
	file_less=$1
fi
echo "Поиск урока $file_less..."

if file $file_less; then
	echo "Файл найден...."
else
	echo "Файл не найден..."
	exit 0
fi
	
echo "Начало считывания файла..."
i=1
while read data[$i]
do
	num=`expr index "${data[$i]}" :`
	lang_first[$i]=${data[$i]:num}
	lang_sec[$i]=${data[$i]:0:num-1}
	echo ${lang_first[$i]} ${lang_sec[$i]}
	let i=i+1
done < $file_less	
qnt=i-1

echo "Поехали?"
while read
do
	echo ${lang_first[$num]}
	num=$RANDOM
	let "num %= $qnt"
	let num=num+1
	echo ${lang_sec[$num]}
done

echo "Конец скрипта..."
exit 0
