-- seleciona os nomes de da tabela empregados onde os empregados possuem um gerente com um salário menor que o deles;
SELECT e2.nome Empregado FROM empregados e1 INNER JOIN empregados e2 
ON e1.id_gerente = e2.id WHERE e1.salario > e2.salario;

INSERT INTO empregado (id, nome, salario, id_gerente) VALUES (1,'Felipe', 1600, 2);
INSERT INTO empregado (id, nome, salario, id_gerente) VALUES (2,'José', 3600);