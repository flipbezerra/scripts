#!/usr/bin/bash
# Calcula a frequência de cada palavra em um arquivo
cat file.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'
