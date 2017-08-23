#!/usr/bin/awk -f
BEGIN {
    a++
    ARGC=2; ARGV[1]="tmp/Catalogo.txt"
    FIELDWIDTHS="6 4 14 22 48 11 8 8 10 7 3 1 2 3 1 5 1"
}
{print $3 "." $7 "." a++}