USE Pixar;
SELECT * FROM Movies;
SELECT * FROM BoxOffice;

-- 1 Utilizando o INNER JOIN , encontre as vendas nacionais ( domestic_sales ) e internacionais ( international_sales ) de cada filme.
SELECT m.id, bf.domestic_sales AS `Vendas Nascionais`,
bf.international_sales AS `Vendas internacionais`
FROM Movies as m
INNER JOIN BoxOffice AS bf
ON m.id = bf.movie_id;

-- 2 Utilizando o INNER JOIN , faça uma busca que retorne o número de vendas para cada filme que possui um número maior de vendas internacionais ( international_sales ) do que vendas nacionais ( domestic_sales ).
SELECT m.id, (bf.international_sales + bf.domestic_sales) AS `Total de Vendas`
FROM Movies AS m
INNER JOIN BoxOffice AS bf
ON bf.international_sales > bf.domestic_sales;

-- 3 Exercício 3: Utilizando o INNER JOIN , faça uma busca que retorne os filmes e sua avaliação ( rating ) em ordem decrescente.
SELECT m.title, bf.rating
FROM Movies AS m
INNER JOIN BoxOffice AS bf
ON m.id = bf.movie_id
ORDER BY bf.rating DESC;

-- 4 Utilizando o LEFT JOIN , faça uma busca que retorne todos os dados dos cinemas, mesmo os que não possuem filmes em cartaz e, adicionalmente, os dados dos filmes que estão em cartaz nestes cinemas. Retorne os nomes dos cinemas em ordem alfabética.
SELECT * 
FROM Theater AS t
LEFT JOIN Movies AS m
ON m.theater_id = t.id
ORDER BY t.name;

-- 5 Utilizando o RIGHT JOIN , faça uma busca que retorne todos os dados dos filmes, mesmo os que não estão em cartaz e, adicionalmente, os dados dos cinemas que possuem estes filmes em cartaz. Retorne os nomes dos cinemas em ordem alfabética.
SELECT *
FROM Theater AS t
RIGHT JOIN Movies AS m
ON m.theater_id = t.id
ORDER BY t.name;

-- 6 Utilizando o INNER JOIN , selecione todas as informações dos filmes com avaliação maior que 8.
SELECT * 
FROM Movies AS m
INNER JOIN BoxOffice AS bf
ON m.id = bf.movie_id and bf.rating > 8
ORDER BY bf.rating DESC;

