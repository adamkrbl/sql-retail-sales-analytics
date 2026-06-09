WITH monthly_revenue AS
(
    SELECT
        DATE_TRUNC(
            'month',
            orders.order_date
        ) AS month,

        SUM(
            order_items.quantity * order_items.unit_price
        ) AS revenue

    FROM orders

    JOIN order_items
        ON orders.order_id = order_items.order_id

    GROUP BY
        DATE_TRUNC(
            'month',
            orders.order_date
        )
)

SELECT
    month,

    ROUND(
        revenue,
        2
    ) AS monthly_revenue,

    ROUND(
        SUM(revenue) OVER (
            ORDER BY month
        ),
        2
    ) AS running_revenue

FROM monthly_revenue

ORDER BY month;