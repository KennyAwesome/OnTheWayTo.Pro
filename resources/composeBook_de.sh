#!/bin/bash
cat ../translation/de/disclaimer.txt
echo "\n"
cat ../translation/de/README.md
echo "\n"
j=0
for i in $(cat ../translation/de/index.txt)
do
j=$((j+1))
echo "${j}. ${i}   \n   \n"
done

mapfile -t title < "../translation/de/index.txt"
j=0
for i in $(cat ../index.txt)
do
j=$((j+1))
echo "# ${j}. ${title[j]}   \n   \n"
cat "../translation/de/${i}.txt"
echo "   \n   \n"
done
