#!/bin/bash
echo Flattening pdf ... May take a long time if converting alot of pages.
cd Input/
mkdir -p processed
for file in *.pdf 
do 
	mkdir processed/"$file-folder"
	echo Processing: "$file"
	pdftoppm -jpeg "$file" processed/"$file-folder"/"$file"
	convert  -append processed/"$file-folder"/"$file*".jpg  ../Output/"$file".jpg 
done
cd ..
echo Cleaning up Source directory.
#rm -r Input/
#mkdir -p Input
#clear
echo PDF Image Conversion Done.
