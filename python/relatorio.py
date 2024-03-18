import pandas as pd

# Script que faz left join com dois resultados de consultas, uma no MySQL e outra no Postgres
# Carrega os resultados das consultas
consulta_mysql = pd.read_csv('MySQL.csv')
consulta_postgresql = pd.read_csv('Postgres.csv')

# Faz o merge dos resultados usando pandas
resultado_final = pd.merge(consulta_mysql, consulta_postgresql, how='left', on='Usuário')

# Exibe o resultado final
print(resultado_final)
resultado_final.to_csv('resultado.csv', index=False)