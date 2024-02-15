# !/bin/bash

#echo "Enter 2 numbers: "
a=$1
b=$2
ch=$3
echo "Enter Choice:"
echo "1. Addition:"
echo "2. Subtraction:"
echo "3. Division:"
echo "4. Multiplication:"
#read ch

case $ch in :
  1)res=`expr$a + $b`
  ;;
  2)res=`expr$a - $b`
  ;;
  3)res=`expr$a / $b`
  ;;
  4)res=`expr$a \* $b`
  ;;
esac
echo "Result: $res"
