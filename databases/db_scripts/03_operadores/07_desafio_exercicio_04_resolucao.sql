/*
Exercício

Selecine o email, cidade e estado dos clientes que moram no estado de 
Minas Gerais e Mato Grosso. 
*/

SELECT email, city, state
FROM sales.customers
WHERE state IN('MG', 'MT');