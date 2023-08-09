-- seleciona nomes da tabela clientes que não possuem um id correspondente na tabela pedidos
SELECT nome Clientes FROM clientes WHERE id NOT IN (SELECT cliente_id FROM pedidos);

INSERT INTO clientes (id_cliente, nome) VALUES (1, 'Felipe');
INSERT INTO clientes (id_cliente, nome) VALUES (2, 'João');
INSERT INTO pedidos (id_pedido, id_cliente) VALUES (1, 2);
INSERT INTO pedidos (id_pedido, id_cliente) VALUES (2, 2);