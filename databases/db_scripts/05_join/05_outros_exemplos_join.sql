-- Outros exemplos de JOINS

-- Exemplo 01
-- Identificar qual é o status professional mais frequente
-- nos clientes que compraram automóveis no site

SELECT 
	cust.professional_status,
	COUNT(fun.paid_date) AS pagamentos
FROM sales.funnel AS fun
INNER JOIN sales.customers AS cust
ON fun.customer_id = cust.customer_id
GROUP BY cust.professional_status
ORDER BY pagamentos DESC;


-- Exemplo 02
-- Identificar qual é o gênero mais frequente nos clientes que
-- compraram automóveis no site .
-- Observação: utilizar a tabela temp_tables.ibge_genders

SELECT ibge.gender, COUNT(fun.paid_date)
FROM sales.funnel AS fun
INNER JOIN sales.customers AS cust
ON fun.customer_id = cust.customer_id
LEFT JOIN temp_tables.ibge_genders AS ibge
ON lower(cust.first_name) = ibge.first_name
GROUP BY ibge.gender;


-- Exemplo 03
-- Identificar quais regiões são os clientes que mais visitam o site
-- Observação: Utilizar a tabela temp_tables.regions

SELECT regions.region,
COUNT(fun.visit_page_date) AS visit
FROM sales.funnel AS fun
INNER JOIN sales.customers AS cust
ON fun.customer_id = cust.customer_id
INNER JOIN temp_tables.regions AS regions
ON lower(cust.city) = lower(regions.city)
AND lower(cust.state) = lower(regions.state)
GROUP BY regions.region
ORDER BY visit DESC;

SELECT * FROM temp_tables.regions;
SELECT * FROM sales.customers;


