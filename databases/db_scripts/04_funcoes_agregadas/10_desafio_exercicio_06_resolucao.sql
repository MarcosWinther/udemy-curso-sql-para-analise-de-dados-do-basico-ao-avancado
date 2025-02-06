/*
Exercício

Conte quantos veículos de cada marca tem registrado na tabela sales.products.
Mostre apenas as marcas que contém mais de 10 veículos registrados.
*/

SELECT brand, COUNT(*)
FROM sales.products
GROUP BY brand
HAVING COUNT(*) > 10;