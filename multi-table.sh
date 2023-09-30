#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Invalid input"
	exit 1
fi

num1=`expr $1`
num2=`expr $2`

if [ $num1 -le 0 ] || [ $num2 -le 0 ]
then
	echo "Input must be greater than 0"
	exit 1
fi

row=1
while [ $row -le $num1 ]
do

	col=1
	while [ $col -le $num2 ]
	do
		result=`expr $row \* $col`
		printf "%d*%d=%d\t" $row $col $result
		col=`expr $col + 1`
	done
	printf "\n"
	row=`expr $row + 1`

done
exit 0
