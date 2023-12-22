#!/usr/bin/bash
# Imprime a décima linha de um arquivo
sed -n '10p' file.txt
# o comando sed analisa e modifica fluxos de texto, o argumento -n evita que o 
# script gere um arquivo de saída, o argumento '10p' imprime apenas a décima 
# linha do arquivo de entrada, não imprimindo nada se o total de linhas for menor que isso