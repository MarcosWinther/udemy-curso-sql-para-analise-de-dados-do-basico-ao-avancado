-- Aula Comando WHERE


-- Exemplo 01
-- Listar produtos da tabela products na ordem crescente no preço
SELECT * FROM sales.products ORDER BY price;

-- Exemplo 02
-- Listar os estados distintos da tabela customers na ordem crescente
SELECT DISTINCT state FROM sales.customers ORDER BY state;