/*
Exercício

Selecione todas as informações do cliente mais rico da tabela sales.customers
(possívelmente a resposta contém mais de um cliente)
*/

SELECT *
FROM sales.customers
WHERE income = (SELECT MAX(income) FROM sales.customers);