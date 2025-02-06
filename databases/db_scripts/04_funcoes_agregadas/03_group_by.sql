-- GROUP BY

-- Exemplo 01: contagem agrupada de uma coluna
-- Calcular o nº de clientes da tabela customers por Estado
SELECT state, COUNT(*) AS nr_clientes
FROM sales.customers
GROUP BY state
ORDER BY nr_clientes DESC;


-- Exemplo 02: contagem agrupada de várias colunas
-- Calcular o nº de clientes por Estado e status profissional
SELECT state, professional_status, COUNT(*) AS nr_clientes
FROM sales.customers
GROUP BY state, professional_status
ORDER BY state, nr_clientes DESC;


-- Exemplo 03: seleção de valores distintos
-- Selecionar os estados distintos na tabela customers utilizando o GROUP BY
SELECT DISTINCT state
FROM sales.customers;

SELECT state
FROM sales.customers
GROUP BY state;