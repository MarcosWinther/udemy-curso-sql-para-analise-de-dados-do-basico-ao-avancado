-- Aula Comando LIMIT

-- Exemplo 01
-- Listar as 10 primeiras linhas da tabela funnel
SELECT * FROM sales.funnel LIMIT 10;

-- Exemplo 02
-- Listar os 10 produtos mais caros da tabela products usando LIMIT E ORDER BY
SELECT * FROM sales.products
ORDER BY price DESC
LIMIT 10;