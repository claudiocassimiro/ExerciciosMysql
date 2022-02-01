USE sakila;

-- 1 Exclua do banco de dados o ator com o nome de "KARL".
DELETE FROM actor
WHERE first_name = 'KARL';

-- 2 Exclua do banco de dados os atores com o nome de "MATTHEW".
DELETE FROM actor
WHERE first_name = 'MATTHEW';

-- 3 Exclua da tabela film_text todos os registros que possuem a palavra "saga" em suas descrições.
DELETE FROM film_text
WHERE description LIKE '%saga%';

-- 4 Apague da maneira mais performática possível todos os registros das tabelas film_actor e film_category.
TRUNCATE sakila.film_actor;
TRUNCATE film_category;
SELECT * FROM film_category;
