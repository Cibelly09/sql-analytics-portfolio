-- KPIs de negócio usando CTEs (consulta simples e fácil de explicar)

-- 1) Primeiro criamos uma CTE para calcular vendas por mês
WITH vendas_mensais AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m-01') AS mes,  -- MySQL
        -- DATE_TRUNC('month', o.order_date) AS mes,   -- PostgreSQL (alternativa)

        SUM(oi.quantity * oi.unit_price) AS receita_mensal,
        COUNT(DISTINCT o.order_id) AS pedidos_mensais
    FROM orders o
    JOIN order_items oi
        ON oi.order_id = o.order_id
    GROUP BY
        DATE_FORMAT(o.order_date, '%Y-%m-01')
)

-- 2) Agora calculamos KPIs básicos a partir da CTE
SELECT
    mes,
    receita_mensal,
    pedidos_mensais,
    receita_mensal / NULLIF(pedidos_mensais, 0) AS ticket_medio
FROM vendas_mensais
ORDER BY mes;
