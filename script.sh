#!/bin/bash
rm tmp/mar
awk -f "./extraeMar.awk" | sort | uniq -D -w 14 | cut -d " " -f 2 >> tmp/mar


