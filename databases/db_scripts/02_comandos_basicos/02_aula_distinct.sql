-- Aula Comando DISTINCT


-- Exemplo 01
-- Listar as marcas de carros que constam na tabela products
SELECT brand FROM sales.products;

-- Exemplo 02
-- Listar as marcas distintas de carros que constam na tabela products
SELECT DISTINCT brand FROM sales.products;

-- Exemplo 03
-- Listar as marcas, os modelos e anos de modelo distintos 
-- que constam na tabela products
SELECT DISTINCT brand, model, model_year FROM sales.products;