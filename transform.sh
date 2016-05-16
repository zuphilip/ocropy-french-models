#!/bin/bash
echo ""
echo "$1 -->"
echo ""
echo "Transformiert den Text aus der Datei $1,"
echo "wobei das lange s sowie Ligaturen ersetzt werden."
echo "Nur ein paar wenige Ligaturen haben standardiesierte"
echo "Unicode Plätze, somit muss evt. abhängig von der Schriftart"
echo "Anpassungen gemacht werden."
echo ""

cp $1 $1.origin

# clean up
sed -i -e 's/—//g' -e 's/^ //g' $1

# langes s und ligaturen damit

# ssi ligatur
sed -i -r "s/ssi//g" $1
# ssl ligatur
sed -i -r "s/ssl//g" $1
# si ligatur
sed -i -r "s/si//g" $1
# sl ligatur
sed -i -r "s/sl//g" $1
# st ligatur
sed -i -r "s/st/ﬅ/g" $1
# langes s und ss
# aus Wikipedia:
# Am Ende eines Wortes, 
# vor einem Apostroph oder Bindestrich 
# sowie vor einem der Buchstaben f, b und h steht rundes s: ſans, hommes, s’est$
# Sonst steht langes ſ.
sed -i -r "s/ss([^ \t\r\n\v\f.,;…'’bfh-])/\1/g" $1 # der Trennstrich - muss am Ende des Ausdruckes sein, escapen funktioniert hier nicht
sed -i -r "s/s([^ \t\r\n\v\f.,;…'’bfh-])/ſ\1/g" $1 # dito

# weitere ligaturen
sed -i -r "s/ct//g" $1
sed -i -r "s/ffi/ﬃ/g" $1
sed -i -r "s/ffl/ﬄ/g" $1
sed -i -r "s/fi/ﬁ/g" $1
sed -i -r "s/fl/ﬂ/g" $1
sed -i -r "s/ff/ﬀ/g" $1

echo "--> $1   ERLEDIGT"
echo ""
echo "Zeilenumbruch nach maximal 60 Zeichen"
echo ""

fold -sw 60 $1 > $1.fold
mv $1.fold $1

echo "--> $1   ERLEDIGT"
echo ""

