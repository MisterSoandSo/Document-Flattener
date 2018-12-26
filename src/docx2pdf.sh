#!/bin/bash

echo Converting docx file to PDF.


for file in Input/*.docx 
do 
	echo Processing: "$file"
	doc2pdf "$file"
	
done

echo Cleaning up directory.
mv Input/*.pdf -t Output/
rm -r Input/
mkdir -p Input
clear
echo PDF Conversion Done.
