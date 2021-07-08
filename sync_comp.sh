unzip $1


# cp lec_1.tex ~/theory_university/computability/semester_4/
# cp master.tex ~/theory_university/computability/semester_4/
# cp preamble.tex ~/theory_university/computability/semester_4/

cd ~/theory_university/computability/semester_4/

xelatex master.tex
makeindex master.idx
xelatex master.tex

git add .
git commit -m 'Update from overleaf'
git push

cd ~/Downloads

rm lec_1.tex 
rm lec_2.tex 
rm lec_3.tex 
rm lec_4.tex 
rm lec_5.tex 
rm lec_6.tex 
rm lec_7.tex 
rm lec_5M.tex 
rm master.tex
rm preamble.tex
rm -rf stix2font

rm $1
