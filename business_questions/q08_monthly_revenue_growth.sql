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
    ) AS revenue,

    ROUND(
        LAG(revenue) OVER (
            ORDER BY month
        ),
        2
    ) AS previous_month_revenue,

    ROUND(
        (
            (
                revenue
                -
                LAG(revenue) OVER (
                    ORDER BY month
                )
            )
            /
            LAG(revenue) OVER (
                ORDER BY month
            )
        ) * 100,
        2
    ) AS growth_percent

FROM monthly_revenue

ORDER BY month;