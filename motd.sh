#!/bin/sh
#!/bin/bash
size=${#1}
counter=0
printf '**'
while [ $size -ne $counter ]
do
    #echo -n "*"
    printf '*'
    counter=$((counter + 1))
done
printf '**'
printf '\n'
c=0
while [ $2 -ne $c ]
do 
    printf '*'
    printf ' '
    echo $1 '*'
    c=$((c + 1))
done
printf '**'
count1=0
while [ $size -ne $count1 ]
do
    #echo -n "*"
    printf '*'
    count1=$((count1 + 1))
done
printf '**'
printf '\n'