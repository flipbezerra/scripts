import re


# VERIFICA SE A STRING POSSUI UM CPF EM FORMATO VÁLIDO
string = "123-345-567-00"
padrao = re.compile("[0-9]{3}\-[0-9]{3}\-[0-9]{3}-[0-9]{2}")
resultado = re.fullmatch(padrao, string)

print(resultado)
# VERIFICA SE A STRING POSSUI UM EMAIL EM FORMATO VÁLIDO
string = "felipegold2010b@gmail.com"
padrao = re.compile("[a-zA-Z0-9]+@[a-zA-Z0-9]+\.com[\.a-z]{0,2}")
resultado = re.fullmatch(padrao, string)

print(resultado)