#!/bin/bash
echo Flattening pdf ... May take a long time if converting alot of pages.
cd Input/
mkdir -p imgtempfile
for file in *.pdf 
do 
	echo Processing: "$file"
	pdftoppm -png "$file" imgtempfile/"$file"
	echo Stiching: "$file"
	convert  imgtempfile/"$file*".png ../Output/"$file" 
done
cd ..
echo Cleaning up Source directory.
rm -r Input/
mkdir -p Input
clear
echo PDF Flattening Done.
