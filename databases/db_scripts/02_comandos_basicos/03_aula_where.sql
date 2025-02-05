-- Aula Comando WHERE

-- Exemplo 01
-- Listar os e-mails dos clientes da nossa base que moram no estado de Santa Catarina
SELECT email, state 
FROM sales.customers 
WHERE state = 'SC';

-- Exemplo 02
-- Listar os e-mails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul
SELECT email, state 
FROM sales.customers 
WHERE state = 'SC' OR state = 'MS';

-- Exemplo 03
-- Listar os e-mails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul e que tenham mais de 30 anos
SELECT email, state, birth_date 
FROM sales.customers 
WHERE (state = 'SC' OR state = 'MS')
AND birth_date < '1995-12-31';