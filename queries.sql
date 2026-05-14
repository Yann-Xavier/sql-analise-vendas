-- Faturamento total por mes.
SELECT
    strftime('%Y-%m', o.order_date) AS sales_month,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_revenue
FROM orders AS o
INNER JOIN order_items AS oi
    ON oi.order_id = o.order_id
GROUP BY
    strftime('%Y-%m', o.order_date)
ORDER BY
    sales_month;

-- Ranking de produtos por faturamento.
SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS total_quantity,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_revenue
FROM order_items AS oi
INNER JOIN products AS p
    ON p.product_id = oi.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY
    total_revenue DESC;

-- Faturamento por cliente e segmento.
SELECT
    c.customer_name,
    c.segment,
    c.state,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_revenue
FROM customers AS c
INNER JOIN orders AS o
    ON o.customer_id = c.customer_id
INNER JOIN order_items AS oi
    ON oi.order_id = o.order_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.segment,
    c.state
ORDER BY
    total_revenue DESC;

-- Ticket medio por pedido.
WITH revenue_by_order AS (
    SELECT
        o.order_id,
        SUM(oi.quantity * oi.unit_price) AS order_revenue
    FROM orders AS o
    INNER JOIN order_items AS oi
        ON oi.order_id = o.order_id
    GROUP BY
        o.order_id
)
SELECT
    ROUND(AVG(order_revenue), 2) AS average_order_ticket
FROM revenue_by_order;

