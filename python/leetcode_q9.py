numero = input("Insira um inteiro")
if numero < 0:      # o número precisa ser inteiro
    print(False)
reverso = 0
temp = numero
while temp != 0:
    digito = temp % 10
    print(digito)
    reverso = reverso * 10 + digito
    print(reverso)
    temp //= 10
    print(temp)
print(reverso == numero) 