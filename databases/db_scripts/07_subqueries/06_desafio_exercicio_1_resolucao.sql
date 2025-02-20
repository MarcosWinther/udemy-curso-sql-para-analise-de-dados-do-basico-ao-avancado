/*
Exercício

Crie uma coluna calculada com o número de visitas realizadas por cada
cliente da tabela sales.customers
*/

WITH numero_visitas AS (
	SELECT customer_id, COUNT(visit_page_date) AS nr_visitas
	FROM sales.funnel
	GROUP BY customer_id
)

SELECT
	cus.*,
	numero_visitas
FROM sales.customers AS cus
LEFT JOIN numero_visitas
	ON cus.customer_id = numero_visitas.customer_id;