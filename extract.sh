#!/bin/sh

input_file=$1
output_file=$2
sed '2!d' $input_file > $output_file 
awk -F '","'  'BEGIN {OFS=","} { if (toupper($17) == "FULLY PAID" || toupper($17) == "LATE (31-120 DAYS)" || toupper($17) == "DEFAULT" || toupper($17) == "CHARGED OFF")  print }' $input_file >> $output_file 
