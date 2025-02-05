/*
Exercício

Selecine o email, cidade e estado dos clientes que não 
moram no estado de São Paulo.
*/

SELECT email, city, state
FROM sales.customers
WHERE state NOT IN('SP');