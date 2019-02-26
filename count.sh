#!/bin/bash

#echo ${value##*/}
counter=0
cd $1
countArray[0]=0 
countArray[1]=0
countArray[2]=0
countArray[3]=0
countArray[4]=0
countArray[5]=0
countArray[6]=0
countArray[7]=0
countArray[8]=0
countArray[9]=0
for file in $1/*
do    
    filename="${file##*/}"
    firstChar=${filename:0:1}
    re='^[0-9]+$'
    if  [[ $firstChar =~ $re ]] ; then
        for value in 0 1 2 3 4 5 6 7 8 9
        do
            if [ $value -eq $firstChar ]
            then
                countArray[value]=$((countArray[value] + 1))
            fi 
        done    
    fi
done

for val in 0 1 2 3 4 5 6 7 8 9
do
    printf $val
    printf ' '
    printf ${countArray[$val]}
    printf '\n'
done
