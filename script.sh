#!/bin/bash
rm tmp/mar

sed -i '4s/mar2/CatalogoMar.txt/gi' './extrae.awk'
awk -f "./extrae.awk" | sed 's/ /0/g' | sort | uniq -d -w 14 | cut -d "." -f 3 | sort -g -r >> tmp/mar
sed -i 's/$/d/' 'tmp/mar'

for linea in $(man tmp/mar);
    do
        sed -i $linea tmp/CatalogoMar.txt
    done
