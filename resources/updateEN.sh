rm en.txt
bash composeBook.sh > en.txt
pandoc en.txt -o ./book/42_en_latest.pdf
git add ./book/42_en_latest.pdf
git commit -m "Updated edition"
git push
