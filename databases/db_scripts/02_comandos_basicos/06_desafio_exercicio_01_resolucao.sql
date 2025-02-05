/*
Exercício 01

Selecione os nomes de cidade distintas que existem no estado de
Minas Gerais em ordem alfabética (dados da tabela sales.customers)
*/

SELECT DISTINCT city 
FROM sales.customers
WHERE state = 'MG'
ORDER BY city;