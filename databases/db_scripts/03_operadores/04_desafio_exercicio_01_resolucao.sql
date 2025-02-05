/*
Exercício

Calcule quantos salários mínimos ganha cada cliente da tabela 
- sales.customers. Selecione as colunas de: email, income e a coluna calculada "salários mínimos"
- Considere o salário mínimo igual à R$1200
*/

SELECT email, income,
(income / 1200) AS salarios_minimos
FROM sales.customers;