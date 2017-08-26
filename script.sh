#!/bin/bash

cat=$(awk -f "./extrae.awk" | sed 's/ /0/g' | sort | uniq -d -w 14 | cut -d "." -f 3 | sort -g -r) #>> tmp/cat
sed -i 's/$/d/' 'tmp/cat'

for linea in $cat;
    do
        sed -i $linea tmp/Catalogo.txt
    done
