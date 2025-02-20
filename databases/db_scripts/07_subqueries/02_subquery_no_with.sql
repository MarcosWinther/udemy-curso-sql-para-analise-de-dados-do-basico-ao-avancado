-- Subquery com WITH

-- Exemplo 02
-- Calcular a média dos clientes por status profissional

WITH table_client AS (
SELECT 
	professional_status,
	((CURRENT_DATE - birth_date) / 365) AS idade
FROM sales.customers
)

SELECT 
	professional_status,
	AVG(idade) AS idade_media
FROM table_client
GROUP BY professional_status;