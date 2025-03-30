#!/bin/bash
#echo "\begin{document}"
cat ../translation/de/disclaimer.txt
cat ../translation/de/README.md
echo -e "\n"
j=0
for i in $(cat ../translation/de/index.txt)
do
j=$((j+1))
#echo -e "${j}. ${i}\n"
done
echo "\tableofcontents"
echo -e "\n"
mapfile -t title < "../translation/de/index.txt"
j=0
for i in $(cat ../index.txt)
do
j=$((j+1))
echo -e "# ${j}. ${title[j]}   \n   \n"
cat "../translation/de/${i}.txt"
echo -e "   \n"
done
#echo "Ende"
