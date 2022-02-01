SELECT 'This is SQL Exercise, Practice and Solution';
SELECT 3, 5, 6;
SELECT 10 + 15;
SELECT 9 * 7;
USE Scientists;
SELECT * FROM Scientists;
SELECT name AS 'Nome do Projeto', hours  AS 'Tempo de Trabalho' FROM Projects;
SELECT name FROM Scientists ORDER BY name;
SELECT name FROM Projects ORDER BY name DESC;
SELECT CONCAT('O projeto ', name, ' preciou de ', hours, ' para ser concluído.') AS 'Frase' FROM Projects;
SELECT CONCAT('O projeto ', name, ' preciou de ', hours, ' para ser concluído.') AS 'Frase' 
	FROM Projects ORDER BY hours DESC LIMIT 3;
SELECT DISTINCT project FROM AssignedTo;
SELECT name FROM Projects ORDER BY hours DESC LIMIT 1;
SELECT name FROM Projects ORDER BY hours LIMIT 1 OFFSET 1;
SELECT * FROM Projects ORDER BY hours LIMIT 5;
SELECT CONCAT('Existem ', COUNT(name), ' cientistas na tabela Scientits') FROM Scientists;