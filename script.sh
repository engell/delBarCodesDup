#!/bin/bash
rm tmp/mar2
rm tmp/mar

sed -i '4s/CatalogoMed.txt/CatalogoMar.txt/gi' './extrae.awk'
awk -f "./extrae.awk" | sort | uniq -D -w 14 | cut -d " " -f 2 >> tmp/mar

for linea in $(man tmp/mar);
    do
        head -$linea tmp/CatalogoMar.txt | tail -1 >> tmp/mar2
    done
