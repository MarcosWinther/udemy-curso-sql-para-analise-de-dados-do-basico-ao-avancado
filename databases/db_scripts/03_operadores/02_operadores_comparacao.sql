-- Aula Operadores de Comparação


-- Exemplo 01
-- Vamos criar uma coluna que retorne TRUE sempre que 
-- um cliente for profissional clt
SELECT
	customer_id,
	CONCAT(first_name, ' ', last_name) AS client_name,
	professional_status,
	(professional_status = 'clt') AS client_clt
FROM sales.customers;