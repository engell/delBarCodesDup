#!/bin/bash
awk -f "./extrae.awk" | sort | uniq -D -w 14 | cut -d " " -f 2


