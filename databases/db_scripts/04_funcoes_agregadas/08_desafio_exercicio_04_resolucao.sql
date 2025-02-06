/*
Exercício

Conte quantos veículos de cada marca tem registrado na tabela sales.products.
Ordene o resultado pelo nome da marca.
*/

SELECT brand, COUNT(*) AS qtd_veiculos
FROM sales.products
GROUP BY brand
ORDER BY brand;