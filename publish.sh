
wget https://www.oxygenxml.com/InstData/Chemistry/oxygen-pdf-chemistry.zip
unzip oxygen-pdf-chemistry.zip

mkdir -p out
touch out/index.html

for file_path in `ls content/*.xml`;
do
  file=`echo $file_path | cut -d '/' -f 2`
  sh "oxygen-pdf-chemistry/chemistry.sh" -in "content/$file" \
    -css frameworks/legaldocml/css/legaldocml.css \
    -out "out/${file%.*}.pdf"
   echo "<a href='${file%.*}.pdf'>${file}</a>" >> out/index.html
done
