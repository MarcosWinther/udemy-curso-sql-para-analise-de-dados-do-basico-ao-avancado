-- Aula Operadores Lógicos


-- Exemplo 01
-- BETWEEN
-- Vamos selecionar veículos que custam entre 100k e 200k na tabela products

SELECT *
FROM sales.products
WHERE price >= 100000 AND price <= 200000;

-- Usando o BETWEEN
SELECT *
FROM sales.products
WHERE price BETWEEN 100000 AND 200000;


-- Exemplo 02
-- NOT
-- Vamos selecionar veículos que custam abaixo de 100k ou acima de 200k

SELECT *
FROM sales.products
WHERE price < 100000 OR price > 200000;

-- NOT
SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100000 AND 200000;


-- Exemplo 03
-- IN
-- Vamos selecionar produtos que sejam da HONDA, TOYOTA ou RENAULT

SELECT *
FROM sales.products
WHERE brand = 'HONDA' OR brand = 'TOYOTA' OR brand = 'RENAULT';

-- IN
SELECT *
FROM sales.products
WHERE brand IN('HONDA', 'TOYOTA', 'RENAULT');


-- Exemplo 03
-- LIKE

-- Vamos selecionar os primeiros nomes distintos da tabela customers
-- que começam com as iniciais ANA
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE 'ANA%';

-- Vamos selecionar os primeiros nomes distintos da tabela customers
-- que terminam com ANA
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE '%ANA';


-- Exemplo 04
-- ILIKE: ignora maiúsculas e minúsculas
-- Vamos selecionar os primeiros nomes distintos com as iniciais 'ana'
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ana%';


-- Exemplo 05
-- IS NULL
-- Vamos selecionar apenas as linhas que contém nulo
-- no campo "population" na tabela temp_tables.region
SELECT *
FROM temp_tables.regions
WHERE population IS NULL;

