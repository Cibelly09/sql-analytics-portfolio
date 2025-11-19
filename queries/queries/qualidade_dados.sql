-- Checks básicos de qualidade de dados (ETL/DataOps)

-- 1) Encontrar registros com campos obrigatórios nulos
SELECT *
FROM customers
WHERE customer_name IS NULL
   OR customer_email IS NULL;

-- 2) Encontrar pedidos com valores negativos ou inconsistentes
SELECT *
FROM order_items
WHERE quantity <= 0
   OR unit_price <= 0;

-- 3) Validar integridade referencial: pedidos sem cliente
SELECT o.order_id, o.customer_id
FROM orders o
LEFT JOIN customers c
    ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- 4) Contar duplicidades por chave de negócio
SELECT
    customer_email,
    COUNT(*) AS total
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;

-- 5) Distribuição de datas inválidas ou fora do padrão
SELECT *
FROM orders
WHERE order_date < '2020-01-01'
   OR order_date > CURRENT_DATE();
