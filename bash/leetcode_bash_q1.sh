#!/usr/bin/bash
# Validação de número de telefone, seguindo o padrão (xxx) xxx-xxxx ou xxx-xxx-xxxx
grep -E '^(\([0-9]{3}\) [0-9]{3}-[0-9]{4})$|^([0-9]{3}-[0-9]{3}-[0-9]{4})$' file.txt