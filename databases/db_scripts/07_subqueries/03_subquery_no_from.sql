-- Subquery no FROM

-- Exemplo 03
-- Calcular a média de idades dos clientes por status profissional

SELECT 
	professional_status,
	AVG(idade) AS idade_media
FROM (
	SELECT 
		professional_status,
		((CURRENT_DATE - birth_date) / 365) AS idade
	FROM sales.customers
) AS table_client
GROUP BY professional_status;