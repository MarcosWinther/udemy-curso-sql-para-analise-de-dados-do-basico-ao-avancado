/*
Exercício

Na query do exercício anterior, acrescente uma coluna informando:
- TRUE se o cliente ganha acima de 5 salários mínimos,
- e FALSE se ganha 4 salários ou menos.
- Chame a nova coluna de "acima de 4 salários"
*/

SELECT email, income,
(income / 1200) AS salarios_minimos,
((income / 1200) > 4) AS "acima de 4 salários"
FROM sales.customers;

