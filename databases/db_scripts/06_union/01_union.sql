-- UNION

-- Exemplo 01: União simples de duas tabelas
-- União da tabela sales.products com a tabela temp_tables.products_2

SELECT * FROM sales.products
UNION ALL
SELECT * FROM temp_tables.products_2;