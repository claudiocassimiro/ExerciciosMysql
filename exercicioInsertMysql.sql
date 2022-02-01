USE sakila;
SELECT * FROM staff;

-- 1 Insira um novo funcionário na tabela sakila.staff .
# Para saber quais campos são obrigatórios, clique com o botão direito na tabela sakila.staff e selecione "Table Inspector". Clique na aba "columns" e verifique quais campos aceitam nulos para te guiar. Lembre-se de que valores que são gerados automaticamente não precisam ser inseridos manualmente. Boa explorada!

INSERT INTO staff (first_name, last_name, address_id, store_id, active, username)
VALUES('Claudio', 'Cassimiro', 3, 2, 1, 'NEtinho123pe');

-- 2 Feito o exercício anterior, vamos agora para o nível 2. Insira dois funcionários novos em apenas uma query.
INSERT INTO staff (first_name, last_name, address_id, store_id, active, username)
VALUES('Lino', 'Algusto', 3, 2, 1, 'Lineu'),
('Arthur', 'Lemos', 3, 2, 1, 'Tutu');

-- 3 Selecione os cinco primeiros nomes e sobrenomes da tabela sakila.customer e cadastre essas pessoas como atores na tabela sakila.actor.
INSERT INTO actor (first_name, last_name)
SELECT first_name, last_name FROM customer
WHERE customer_id BETWEEN 1 AND 5;

-- 4 Cadastre três categorias de uma vez só na tabela sakila.category.
SELECT * FROM category;
INSERT INTO category(name)
VALUES('Games'),
('SCI-FI');




