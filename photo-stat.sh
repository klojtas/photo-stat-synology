#!/bin/bash
declare -a arr=("05" "06" "07" "08" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23")
for i in ${arr[@]}; do
  FOLDER_NAME="rok 20$i"
  echo "$FOLDER_NAME"
	find "$FOLDER_NAME"  -size +1M -type f | wc -l
done 
