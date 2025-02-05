-- Aula Operadores Aritméticos


-- Exemplo 01
-- Vamos criar uma coluna contendo a idade do cliente da tabela sales.customers
SELECT
	CONCAT(first_name, ' ', last_name) AS client_name,
	email,
	birth_date,
	((CURRENT_DATE - birth_date) / 365) AS client_age
FROM sales.customers;

-- Utilizando as aspas duplas
SELECT
	CONCAT(first_name, ' ', last_name) AS "Nome do Cliente",
	email,
	birth_date,
	((CURRENT_DATE - birth_date) / 365) AS "Idade do Cliente"
FROM sales.customers;


-- Exemplo 02
-- Listar os 10 clientes mais novos da tabela customers
SELECT 
	CONCAT(first_name, ' ', last_name) AS client_name,
	email,
	birth_date,
	((CURRENT_DATE - birth_date) / 365) AS client_age
FROM sales.customers
ORDER BY client_age
LIMIT 10;


-- Exemplo 03
-- Vamos criar uma coluna "nome_completo" contendo o nome completo do cliente

-- Primeira forma:
SELECT
	first_name || ' ' || last_name AS nome_completo
FROM sales.customers;

-- Segunda forma:
SELECT
	CONCAT(first_name, ' ', last_name) AS nome_completo
FROM sales.customers;