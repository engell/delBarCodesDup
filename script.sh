#!/bin/bash
rm tmp/mar2
rm tmp/mar

sed -i '4s/mar2/CatalogoMar.txt/gi' './extrae.awk'
awk -f "./extrae.awk" | sed 's/ //g' | sort | uniq -D -w 14 | cut -d "." -f 3 >> tmp/mar

for linea in $(man tmp/mar);
    do
        head -$linea tmp/CatalogoMar.txt | tail -1 >> tmp/mar2
    done
sed -i '4s/CatalogoMar.txt/mar2/gi' './extrae.awk'
awk -f "./extrae.awk" | sed 's/ /0/g' | cut -d "." -f 1,2 | sort | uniq -d -w 14
sed -i '4s/mar2/CatalogoMar.txt/gi' './extrae.awk'
