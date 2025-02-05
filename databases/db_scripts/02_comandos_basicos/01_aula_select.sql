-- Aula: Comando SELECT


-- Exemplo 01:
-- Listar os e-mails dos clientes da tabela sales.customers
SELECT email FROM sales.customers;

-- Exemplo 02:
-- Listar os e-mails e nomes dos clientes da tabela sales.customers
SELECT CONCAT(first_name, ' ', last_name) AS client_name, email FROM sales.customers;

-- Exemplo 03:
-- Listar todas as informações dos clientes da tabela sales.customers
SELECT * FROM sales.customers;