-- HAVING

-- Exemplo 01: seleção com filtro no HAVING
-- Calcular o nº de clientes por Estado filtrando apenas 
-- Estados acima de 100 clientes
SELECT STATE, COUNT(*)
FROM sales.customers
GROUP BY STATE
HAVING COUNT(*) > 100;