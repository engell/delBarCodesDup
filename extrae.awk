#!/usr/bin/awk -f
BEGIN {
    a++
    ARGC=2; ARGV[1]="tmp/Catalogo.txt"
    FIELDWIDTHS="10 14 81 8"
}
{print $2 "." $4 "." a++}