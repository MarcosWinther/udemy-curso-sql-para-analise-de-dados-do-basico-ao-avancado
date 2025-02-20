-- RIGHT JOIN

-- Exemplo 01
-- Vamos utilizar o RIGHT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2

SELECT t1.name, t2.cpf, t2.state
FROM temp_tables.tabela_1 AS t1
RIGHT JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf;