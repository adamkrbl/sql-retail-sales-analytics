WITH product_revenue AS
(
    SELECT
        products.category,
        products.product_name,

        ROUND(
            SUM(order_items.quantity * order_items.unit_price),
            2
        ) AS revenue

    FROM products

    JOIN order_items
        ON products.product_id = order_items.product_id

    GROUP BY
        products.category,
        products.product_name
)

SELECT
    category,
    product_name,
    revenue,

    RANK() OVER
    (
        PARTITION BY category
        ORDER BY revenue DESC
    ) AS category_rank

FROM product_revenue

ORDER BY
    category,
    category_rank;