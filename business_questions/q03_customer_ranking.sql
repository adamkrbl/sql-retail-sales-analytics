SELECT
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    ROUND(
        SUM(order_items.quantity * order_items.unit_price),
        2
    ) AS total_spent,

    RANK() OVER (
        ORDER BY SUM(order_items.quantity * order_items.unit_price) DESC
    ) AS customer_rank

FROM customers

JOIN orders
    ON customers.customer_id = orders.customer_id

JOIN order_items
    ON orders.order_id = order_items.order_id

GROUP BY
    customers.customer_id,
    customers.first_name,
    customers.last_name

ORDER BY customer_rank;