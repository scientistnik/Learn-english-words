#!/bin/bash

clear

#echo "Предположим что размер экрана 80x24!!!"
#echo
x_max=80; y_max=24
echo "Количество переданных параметров равно $#"
let dy=y_max/2-$#
let dx=x_max/4
echo "Отступ снизу равен $dy"
tput cup $dy $dx
echo "$1"
let next_text=$dy+2
echo $next_text
tput cup $next_text $dx
read
