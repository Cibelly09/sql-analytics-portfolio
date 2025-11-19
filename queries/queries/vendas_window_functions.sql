-- Análises de vendas usando Window Functions
-- Objetivo: rankear pedidos e calcular receita acumulada por cliente

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    SUM(oi.quantity * oi.unit_price) AS valor_pedido,

    -- Receita acumulada por cliente ao longo do tempo
    SUM(SUM(oi.quantity * oi.unit_price)) OVER (
        PARTITION BY c.customer_id
        ORDER BY o.order_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS receita_acumulada_cliente,

    -- Ranking dos pedidos dentro de cada cliente
    RANK() OVER (
        PARTITION BY c.customer_id
        ORDER BY SUM(oi.quantity * oi.unit_price) DESC
    ) AS rank_pedido_cliente

FROM customers c
JOIN orders o
    ON o.customer_id = c.customer_id
JOIN order_items oi
    ON oi.order_id = o.order_id

GROUP BY
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date

ORDER BY
    c.customer_id,
    o.order_date;
