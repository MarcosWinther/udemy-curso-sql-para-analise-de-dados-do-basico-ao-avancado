/*
Exercício

Informe a idade do cliente mais velho e mais novo da tabela sales.customers
*/

-- Cliente mais velho
SELECT MAX((CURRENT_DATE- birth_date) / 365)
FROM sales.customers;

-- Cliente mais novo
SELECT MIN((CURRENT_DATE- birth_date) / 365)
FROM sales.customers;