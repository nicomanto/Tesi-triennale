#!/bin/bash

DIR="./"	# modificare per scegliere il nome della cartella di destinazione
NAME="tesi"		# modificiare per scegliere il nome del file di origine (.tex)

if [ ! -d $DIR ];
  then
    mkdir $DIR;
fi

echo --------------------
echo - Inizializzazione -
echo --------------------

pdflatex -output-directory=$DIR -shell-escape $NAME
biber $DIR/$NAME
makeindex -s ./$NAME.ist -t ./$NAME.glg -o ./$NAME.gls ./$NAME.glo
makeindex -s ./$NAME.ist -t ./$NAME.alg -o ./$NAME.acr ./$NAME.acn

# Due volte because Latex

pdflatex -output-directory=$DIR -shell-escape $NAME
biber $DIR/$NAME
makeindex -s ./$NAME.ist -t ./$NAME.glg -o ./$NAME.gls ./$NAME.glo
makeindex -s ./$NAME.ist -t ./$NAME.alg -o ./$NAME.acr ./$NAME.acn

echo -------------------------
echo - Generazione Documento -
echo -------------------------

pdflatex -output-directory=$DIR -shell-escape $NAME 
pdflatex -output-directory=$DIR -shell-escape $NAME

echo ---------------------------------
echo - Rimozione dei file non necessari -
echo ---------------------------------

rm $DIR/*.acn $DIR/*.aux $DIR/*.bbl $DIR/*.bcf $DIR/*.glo
rm $DIR/*.ist $DIR/*.lof $DIR/*.lot $DIR/*.run.xml $DIR/*.toc
# Per mantenere i log commentare la linea seguente
rm $DIR/*.blg  $DIR/*.log

echo ---------------------------- END -----------------------------
