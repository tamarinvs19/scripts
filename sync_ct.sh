unzip $1


cp -r figures ~/theory_university/complexity_theory/semester_3/ 
cp lec_1.tex ~/theory_university/complexity_theory/semester_3/
cp lec_2.tex ~/theory_university/complexity_theory/semester_3/
cp lec_3.tex ~/theory_university/complexity_theory/semester_3/
cp lec_4.tex ~/theory_university/complexity_theory/semester_3/
cp lec_5.tex ~/theory_university/complexity_theory/semester_3/
cp lec_6.tex ~/theory_university/complexity_theory/semester_3/
cp lec_7.tex ~/theory_university/complexity_theory/semester_3/
cp master.tex ~/theory_university/complexity_theory/semester_3/

cd ~/theory_university/complexity_theory/semester_3/

xelatex master.tex
makeindex master.idx
xelatex master.tex

git add .
git commit -m 'Update from overleaf'
git push

cd ~/Downloads

rm -rf figures
rm lec_1.tex 
rm lec_2.tex 
rm lec_3.tex 
rm lec_4.tex 
rm lec_5.tex 
rm lec_6.tex 
rm lec_7.tex 
rm master.tex
rm preamble.tex
rm -rf stix2font

