import re

# Script de exemplos de uso de regex para validação
# Verifica se a string possui um cpf em formato válido
cpf = "123.345.567-89"
padrao_cpf = re.compile("[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}")
resultado = re.fullmatch(padrao_cpf, cpf)

print(resultado)
# Verifica se a string possui um e-mail em formato válido
email = "felipegold2010b@gmail.com"
padrao_email = re.compile("[a-zA-Z0-9]+@[a-zA-Z0-9]+\.com[\.a-z]{0,2}")
resultado = re.fullmatch(padrao_email, email)

print(resultado)