/*
Exercício

Selecine os nomes das cidade que começam com a letra Z.
Dados da tabela temp_table.regions
*/

SELECT city
FROM temp_tables.regions
WHERE city ILIKE 'Z%';

