-- troca na tabela salário o atributo sexo (enum('m', 'f')) por 'm' onde ele for 'f' e vice-versa
UPDATE salarios 
SET sexo = IF(sexo = 'm', 'f', IF(sexo = 'f', 'm', sexo)) 
WHERE id <> 0;
-- alternativa usando CASE
UPDATE salarios
SET sexo = CASE sexo
    WHEN 'm' THEN 'f'
    WHEN 'f' THEN 'm'
    ELSE sexo
END WHERE id <> 0;

INSERT INTO salarios (id, nome, sexo, salario) VALUES (1,'A', 'f', 2500);
INSERT INTO salarios (id, nome, sexo, salario) VALUES (2,'B', 'f', 1500);
INSERT INTO salarios (id, nome, sexo, salario) VALUES (3,'C', 'm', 5500);
INSERT INTO salarios (id, nome, sexo, salario) VALUES (4,'D', 'm', 500);