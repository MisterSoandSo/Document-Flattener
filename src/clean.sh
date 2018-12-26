#!/bin/bash

NOW=$(date +"%m_%d_%Y_%H_%M_%S")

zip -r Output_$NOW.zip Output/

rm -r Output/
mkdir -p Output
