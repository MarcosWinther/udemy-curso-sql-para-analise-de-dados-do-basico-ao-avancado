/*
Exercício

Conte quantos veículos existem registrados na tabela sales.products por:
- Marca;
- Ano do modelo. 
Ordene pela nome da marca e pelo ano do veículo
*/

SELECT brand, model_year, COUNT(*) AS qtd_veiculos
FROM sales.products
GROUP BY brand, model_year
ORDER BY brand, model_year;