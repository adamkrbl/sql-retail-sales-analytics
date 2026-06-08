SELECT
    ROUND(
        AVG(order_total),
        2
    ) AS average_order_value
FROM
(
    SELECT
        orders.order_id,

        SUM(
            order_items.quantity * order_items.unit_price
        ) AS order_total

    FROM orders

    JOIN order_items
        ON orders.order_id = order_items.order_id

    GROUP BY
        orders.order_id
) AS order_summary;