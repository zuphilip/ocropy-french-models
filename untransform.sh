#!/bin/bash
echo ""
echo "Un-Transformiert alle .gt.txt-Dateien"
echo "im Verzeichnis $1 (hier kann man auch"
echo "anpassen ob das lange s ersetzt wird)."
echo ""


# langes s und ligaturen damit

# ssi ligatur
sed -i -r "s//ssi/g" $1/*.gt.txt
# ssl ligatur
sed -i -r "s//ssl/g" $1/*.gt.txt
# si ligatur
sed -i -r "s//si/g" $1/*.gt.txt
# sl ligatur
sed -i -r "s//sl/g" $1/*.gt.txt
# st ligatur
sed -i -r "s/ﬅ/st/g" $1/*.gt.txt
# langes s und ss
sed -i -r "s//ss/g" $1/*.gt.txt
sed -i -r "s/ſ/s/g" $1/*.gt.txt

# weitere ligaturen
sed -i -r "s//ct/g" $1/*.gt.txt
sed -i -r "s/ﬃ/ffi/g" $1/*.gt.txt
sed -i -r "s/ﬄ/ffl/g" $1/*.gt.txt
sed -i -r "s/ﬁ/fi/g" $1/*.gt.txt
sed -i -r "s/ﬂ/fl/g" $1/*.gt.txt
sed -i -r "s/ﬀ/ff/g" $1/*.gt.txt

echo "ERLEDIGT"
echo ""

