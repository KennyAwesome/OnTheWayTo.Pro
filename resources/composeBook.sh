#!/bin/bash
cat ../title.md
echo -e "\n"
cat ../disclaimer.txt
echo -e "\n"
cat ../README.md
echo -e "\n"
echo "\tableofcontents"
echo -e "\n"
mapfile -t title < "../index.txt"
j=0
for i in $(cat ../index.txt)
do
j=$((j+1))
echo -e "# ${j}. ${i}   \n   \n"
cat "../${i}.txt"
echo -e "   \n"
done
