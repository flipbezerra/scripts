-- seleciona linhas da tabela pacientes onde os pacientes apresentam entre as condições a diabete tipo 1 (DIAB1)
SELECT * FROM pacientes WHERE condicoes 
LIKE '% DIAB1%' OR condicoes LIKE 'DIAB1%';

INSERT INTO pacientes (id, nome, condicoes) VALUES (1,'Felipe', 'DIAB100 MYOP');
INSERT INTO pacientes (id, nome, condicoes) VALUES (2,'João', 'ACNE DIAB100');
INSERT INTO pacientes (id, nome, condicoes) VALUES (3,'José', 'DIAB201');
INSERT INTO pacientes (id, nome) VALUES (4, 'Maria');