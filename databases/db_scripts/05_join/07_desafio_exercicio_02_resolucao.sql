/*
Exercício

Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel
*/

SELECT 
st.store_name, 
COUNT(fun.visit_page_date) AS visits
FROM sales.funnel AS fun
INNER JOIN sales.stores AS st
ON fun.store_id = st.store_id
GROUP BY st.store_name
ORDER BY visits DESC;