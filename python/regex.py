import re

# Script de exemplos de uso de regex para validação
# Verifica se a string possui um cpf em formato válido
string = "123.345.567-89"
padrao = re.compile("[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}")
resultado = re.fullmatch(padrao, string)

print(resultado)
# Verifica se a string possui um e-mail em formato válido
string = "felipegold2010b@gmail.com"
padrao = re.compile("[a-zA-Z0-9]+@[a-zA-Z0-9]+\.com[\.a-z]{0,2}")
resultado = re.fullmatch(padrao, string)

print(resultado)