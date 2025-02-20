-- Subquery no SELECT

-- Exemplo 04
-- Na tabela sales.funnel, vamos criar uma coluna que informe
-- o nº de visitas acumuladas que a loja visitada recebeu até
-- o momento.

SELECT
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(
		SELECT COUNT(*)
		FROM sales.funnel AS fun2
		WHERE fun2.visit_page_date <= fun.visit_page_date
		AND fun2.store_id = fun.store_id
	) AS visitas_acumuladas
FROM sales.funnel AS fun
LEFT JOIN sales.stores as sto
		on fun.store_id = sto.store_id
ORDER BY sto.store_name, fun.visit_page_date;