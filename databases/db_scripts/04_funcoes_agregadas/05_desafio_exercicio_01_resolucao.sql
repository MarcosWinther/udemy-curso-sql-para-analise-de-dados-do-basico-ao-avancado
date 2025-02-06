/*
Exercício

Conte quantos clientes da tabela sales.customers tem menos de 30 anos
*/

SELECT COUNT(*) AS qtd_clientes
FROM sales.customers
WHERE ((CURRENT_DATE - birth_date) / 365) < 30;