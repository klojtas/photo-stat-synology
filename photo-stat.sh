#!/bin/bash
declare -a arr=("05" "06" "07" "08" "05" "06" "07" "08" "09" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23")
MIN_SIZE="500k"
FOLDER_PREFIX="rok 20"
for i in ${arr[@]}; do
  FOLDER_NAME="$FOLDER_PREFIX$i"
  echo "$FOLDER_NAME"
  find "$FOLDER_NAME"  -size "+$MIN_SIZE" -type f | wc -l
done 
