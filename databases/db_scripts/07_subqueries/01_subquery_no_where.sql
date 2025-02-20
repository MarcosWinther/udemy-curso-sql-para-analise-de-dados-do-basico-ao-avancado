-- Subquery no WHERE

-- Exemplo 01
-- Verificar qual é o veículo mais barato da tabela products

SELECT *
FROM sales.products
WHERE price = (
	SELECT MIN(price)
	FROM sales.products
);