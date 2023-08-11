#!/usr/bin/bash
# Validação de número de telefone, seguindo o padrão (xxx) xxx-xxxx ou xxx-xxx-xxxx
grep -E '^(\([0-9]{3}\) [0-9]{3}-[0-9]{4})$|^([0-9]{3}-[0-9]{3}-[0-9]{4})$' file.txt
# grep busca um padrão em um arquivo, nesse caso "file.txt", o argumento -E permite mais customização
# a expressões regulares, incluindo operações lógicas, nesse caso sendo sendo utilizado o OU (|)
# ^ especifica o início de uma cadeia de caracteres, (\ \) para especificar que o trecho está entre parênteses
# [0-9]{3} especifica 3 dígitos consecutivos contendo quaisquer caracteres numéricos
# espaço e hífen (-) são especificados digitando normalmente, $ especifica o fim de uma cadeia de caracteres