/*
Exercício

Na query do exercício anterior, filtre apenas:
- os clientes que ganham entre 4 e 5 salários mínimos. 
- Utilize o comando BETWEEN.
*/

SELECT email, income,
(income / 1200) AS salarios_minimos,
((income / 1200) > 4) AS "acima de 4 salários"
FROM sales.customers
WHERE (income / 1200) BETWEEN 4 AND 5;