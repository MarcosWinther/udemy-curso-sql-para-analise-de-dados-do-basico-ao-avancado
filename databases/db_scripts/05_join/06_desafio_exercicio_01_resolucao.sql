/*
Exercício

Identifique quais as marcas de veículo mais visitada na tabela sales.funnel
*/

SELECT 
prod.brand,
COUNT(fun.visit_page_date) AS visits
FROM sales.funnel AS fun
INNER JOIN sales.products AS prod
ON fun.product_id = prod.product_id
GROUP BY prod.brand
ORDER BY visits DESC;