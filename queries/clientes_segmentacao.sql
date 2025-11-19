-- Segmentação de clientes por receita e número de pedidos
-- Cenário: e-commerce com tabelas customers, orders, order_items e regions

WITH vendas_por_cliente AS (
    SELECT
        c.customer_id,
        c.customer_name,
        r.region_name,
        COUNT(DISTINCT o.order_id) AS total_pedidos,
        SUM(oi.quantity * oi.unit_price) AS receita_total
    FROM customers c
    JOIN orders o
        ON o.customer_id = c.customer_id
    JOIN order_items oi
        ON oi.order_id = o.order_id
    JOIN regions r
        ON r.region_id = c.region_id
    WHERE o.order_date >= DATE '2024-01-01'
    GROUP BY
        c.customer_id,
        c.customer_name,
        r.region_name
)

SELECT
    customer_id,
    customer_name,
    region_name,
    total_pedidos,
    receita_total
FROM vendas_por_cliente
WHERE receita_total > 50000
  AND total_pedidos >= 3
ORDER BY receita_total DESC;
