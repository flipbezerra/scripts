-- seleciona linhas da tabela pacientes onde os pacientes apresentam entre as condições a diabete tipo 1 (DIAB1)
SELECT * FROM pacientes WHERE condicoes LIKE '% DIAB1%' OR condicoes LIKE 'DIAB1%';

INSERT INTO pacientes (id_paciente, nome_paciente, condicoes) VALUES (1,'Felipe', 'DIAB100 MYOP');
INSERT INTO pacientes (id_paciente, nome_paciente, condicoes) VALUES (2,'João', 'ACNE DIAB100');
INSERT INTO pacientes (id_paciente, nome_paciente, condicoes) VALUES (3,'José', 'DIAB201');
INSERT INTO pacientes (id_paciente, nome_paciente) VALUES (4,'Maria');