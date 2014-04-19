#!/bin/bash


var=$(pwd)


mkdir $var/tmp

cp $1/*.$2 $var/tmp

cd $var/tmp

for file in $var/tmp/*.$2; 

do fileOut=${file%.$2}; 

mv $file $fileOut.$3 ; 
mv $fileOut.$3 $var;
done;
rm -rf $var/tmp
