#!/bin/bash


# Maqsadli IP/domenga har 5 sekundda so'rov yuborib, 
# natijani rangli (yashil/qizil) va 
# vaqt muhri (timestamp) bilan konsolga chiqaruvchi skript.

RED='\e[31m'
BLU='\e[34m'
GRN='\e[32m'
DEF='\e[0m'

# echo -e ${GRN} Bu yashil rang, ${RED} va qizil. ${BLU} Ko\'k rang! ${DEF} Rangsiz.

count=1

while true;
do
  ping -c 1 google.com &> /dev/null
  echo "${count}-so'rov borishi"
  count=$(($count+1))
  if [ $? -eq 0 ]; then
    echo "Ping muvaffaqiyatli yuborildi"
  elif [ $? -eq 1 ]; then
    echo "So'rov ketmadi"
  else
    echo "Tushunarsiz xato bo'ldi"
fi
  sleep 5
done
