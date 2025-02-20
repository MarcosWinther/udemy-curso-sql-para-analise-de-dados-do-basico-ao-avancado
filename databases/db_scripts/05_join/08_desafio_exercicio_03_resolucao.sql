/*
Exercício

Identifique quantos clientes moram em cada tamanho de cidade 
(o porte da cidade consta na coluna "size" da tabela temp_tables.regions)
*/

SELECT 
reg.size,
COUNT(customer_id) AS qtd_clients
FROM sales.customers AS cust
INNER JOIN temp_tables.regions AS reg
ON LOWER(cust.city) = LOWER(reg.city)
AND LOWER(cust.state) = LOWER(reg.state)
GROUP BY reg.size
ORDER BY qtd_clients DESC;