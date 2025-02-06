-- Funções agregadas: COUNT

-- Exemplo 01
-- Contagem de visitas realizadas ao site da empresa fictícia
SELECT COUNT(*)
FROM sales.funnel;


-- Exemplo 02
-- Contagem de todos os pagamentos registrados na tabela sales.funnel
SELECT COUNT(paid_date)
FROM sales.funnel;


-- Exemplo 03
-- Contagem distinta de todos os produtos visitados em jan/21
SELECT COUNT(DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31';