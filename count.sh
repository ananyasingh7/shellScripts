#!/bin/sh
#!/bin/bash

#echo ${value##*/}

cd $1 

counter = 0
for value in $1/*
do    
    counter=$((counter + 1))
    fileList[counter] = value
    echo $fileList[$counter]
done

