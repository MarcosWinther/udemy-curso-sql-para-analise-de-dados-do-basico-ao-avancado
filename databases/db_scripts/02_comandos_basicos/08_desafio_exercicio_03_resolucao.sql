/*
Exercício 03

Selecione todos os dados dos 10 clientes com maior score nascidos
após 01/01/2000 (dados da tabela sales.customers)
*/

SELECT * FROM sales.customers
WHERE birth_date >= '2000-01-01'
ORDER BY score DESC
LIMIT 10;