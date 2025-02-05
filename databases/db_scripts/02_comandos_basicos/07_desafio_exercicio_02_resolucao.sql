/*
Exercício 02

Selecione o visit_id das 10 compras mais recentes 
efetuadas (dados da tabela sales.funnel)
*/

SELECT visit_id
FROM sales.funnel
WHERE paid_date IS NOT NULL
ORDER BY paid_date DESC
LIMIT 10;