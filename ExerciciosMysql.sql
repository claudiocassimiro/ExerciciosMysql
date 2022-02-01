USE Pixar;

-- 1 Exercício 1 : Insira as produções da Pixar abaixo na tabela Movies :
INSERT INTO Movies(title, director, year, length_minutes)
VALUES
('Monstros SA', 'Pete Docter', 2001, 92),
('Procurando Nemo', 'John Lasseter', 2003, 107),
('Os incriveis', 'Brad Bird', 2004, 116),
('Wall-e', 'Pete Docter', 2008, 104);

DELETE FROM BoxOffice
WHERE rating = 6.8;

-- 2 Procurando Nemo foi aclamado pela crítica! Foi classificado em 6.8, fez 450 milhões no mercado interno e 370 milhões no mercado internacional. Adicione as informações à tabela BoxOffice.
INSERT INTO BoxOffice(movie_id, rating, domestic_sales, international_sales)
VALUES
(9, 6.8, 450, 370);

-- 3  O diretor do filme "Procurando Nemo" está incorreto, na verdade ele foi dirigido por Andrew Staton. Corrija esse dado utilizando o UPDATE.
SELECT * FROM Movies;
UPDATE Movies
SET director = 'Andrew Staton'
WHERE id = 9;

-- 4 O título do filme "Ratatouille" esta escrito de forma incorreta na tabela Movies , além disso, o filme foi lançado em 2007 e não em 2010. Corrija esses dados utilizando o UPDATE.
UPDATE Movies
SET title = 'Ratatouille', year = 2007
WHERE id = 3;

-- 5 Insira as novas classificações abaixo na tabela BoxOffice , lembre-se que a coluna movie_id é uma foreign key referente a coluna id da tabela Movies :
INSERT INTO BoxOffice(movie_id, rating, domestic_sales, international_sales)
VALUES
(8, 8.5, 300, 250),
(10, 7.4, 460, 510),
(11, 9.9, 290, 280);

-- 6 Exclua da tabela Movies o filme "WALL-E".
DELETE FROM BoxOffice
WHERE movie_id = 11;

DELETE FROM Movies
WHERE id = 11;

-- 7 Exclua da tabela Movies todos os filmes dirigidos por "Andrew Staton".
DELETE FROM BoxOffice
WHERE movie_id IN (2, 9);

DELETE FROM Movies
WHERE id IN (2, 9);

-- 8 Altere a classificação da tabela BoxOffice para 9.0 de todos os filmes que lucraram mais de 400 milhões no mercado interno.
UPDATE BoxOffice
SET rating = 9.3
WHERE domestic_sales > 400000000;

-- 9 Altere a classificação da tabela BoxOffice para 6.0 de todos os filmes que lucraram menos de 300 milhões no mercado internacional e mais de 200 milhões no mercado interno.
UPDATE BoxOffice
SET rating = 6.5
WHERE domestic_sales > 200000000 AND international_sales < 300000000;

-- 10 Exclua da tabela Movies todos os filmes com menos de 100 minutos de duração.
DELETE FROM BoxOffice
WHERE movie_id IN (1, 6, 7, 8);

DELETE FROM Movies
WHERE length_minutes < 100;
