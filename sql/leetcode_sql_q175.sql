-- cria uma tabela juntando as tabelas pessoas e enderecos através da ocorrência de um id_pessoa correspondente
SELECT pessoas.primeiro_nome, pessoas.segundo_nome, endereco.cidade 
FROM pessoas LEFT JOIN endereco USING (id_pessoa);

INSERT INTO pessoas (id_pessoa, primeiro_nome, segundo_nome) VALUES (1,'Felipe', 'Bezerra');
INSERT INTO pessoas (id_pessoa, primeiro_nome, segundo_nome) VALUES (2,'João', ' de Barro');
INSERT INTO pessoas (id_pessoa, primeiro_nome, segundo_nome) VALUES (3,'Maria', ' do Bairro');

INSERT INTO endereco (id_endereco, id_pessoa, cidade, estado) VALUES (1, 2, 'Rio Branco', 'Acre');
INSERT INTO endereco (id_endereco, id_pessoa, cidade, estado) VALUES (2, 2, 'Rio Branco', 'Acre');