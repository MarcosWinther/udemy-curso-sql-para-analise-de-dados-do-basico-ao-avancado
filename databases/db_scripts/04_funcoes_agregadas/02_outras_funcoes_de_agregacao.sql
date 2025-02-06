-- Outras funções agregadas

-- Exemplo 01
-- Calcular o preço mínimo, máximo e médio dos produtos da tabela products
SELECT MIN(price), MAX(price), AVG(price)
FROM sales.products;


-- Exemplo 02
-- Veículo mais caro da tabela products
SELECT *
FROM sales.products
WHERE price = (SELECT MAX(price) FROM sales.products);