cat ../disclaimer.txt
echo "\n"
cat ../README.md
echo "\n"
j=0
for i in $(cat ../index.txt)
do
j=$((j+1))
echo "${j}. ${i}   \n   \n"
done
j=0
for i in $(cat ../index.txt)
do
j=$((j+1))
echo "# ${j}. ${i}   \n   \n"
cat "../${i}.txt"
echo "   \n   \n"
done
