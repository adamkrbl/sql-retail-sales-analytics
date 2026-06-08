WITH customer_revenue AS
(
    SELECT
        customers.customer_id,
        customers.first_name,
        customers.last_name,

        SUM(
            order_items.quantity * order_items.unit_price
        ) AS lifetime_value

    FROM customers

    JOIN orders
        ON customers.customer_id = orders.customer_id

    JOIN order_items
        ON orders.order_id = order_items.order_id

    GROUP BY
        customers.customer_id,
        customers.first_name,
        customers.last_name
)

SELECT
    customer_id,
    first_name,
    last_name,

    ROUND(
        lifetime_value,
        2
    ) AS lifetime_value

FROM customer_revenue

ORDER BY lifetime_value DESC;