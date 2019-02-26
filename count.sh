#!/bin/sh
#!/bin/bash

#echo ${value##*/}

cd $1 

for file in $1/*
do    
    filename="${file##*/}"
    echo $filename
done

