USE sakila;

SELECT DISTINCT last_name FROM actor;

SELECT COUNT(DISTINCT last_name) FROM actor;

SELECT * FROM actor ORDER BY first_name, last_name DESC;

SELECT * FROM language WHERE name != 'English';

SELECT title, release_year, length, rating, rental_rate, replacement_cost
	FROM film ORDER BY rental_duration DESC, replacement_cost LIMIT 20;
