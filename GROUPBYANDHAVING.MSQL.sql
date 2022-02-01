USE sakila;
SELECT COUNT(*) FROM customer GROUP BY active;


SELECT store_id, IF(active, 'ativo', 'inativo') AS Status,
count(*) FROM customer GROUP BY store_id, active ORDER BY store_id;

SELECT rating, AVG(rental_duration) AS Média
FROM film GROUP BY rating ORDER BY Média DESC;

SELECT district, COUNT(*) AS Quantity FROM address GROUP BY district HAVING Quantity < 5 ORDER BY Quantity DESC;