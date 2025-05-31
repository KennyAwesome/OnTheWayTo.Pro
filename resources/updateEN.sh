rm en.txt
bash composeBook.sh > en.txt
#pandoc en.txt -o ./book/42_en_latest.pdf
pandoc -V geometry:margin=1in -o ./book/42_en_latest.pdf en.txt
git add ./book/42_en_latest.pdf
git commit -m "Updated edition"
git push
