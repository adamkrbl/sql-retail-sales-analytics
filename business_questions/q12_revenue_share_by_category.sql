WITH category_revenue AS
(
    SELECT
        products.category,

        SUM(
            order_items.quantity * order_items.unit_price
        ) AS revenue

    FROM products

    JOIN order_items
        ON products.product_id = order_items.product_id

    GROUP BY
        products.category
)

SELECT
    category,

    ROUND(
        revenue,
        2
    ) AS revenue,

    ROUND(
        revenue
        /
        SUM(revenue) OVER ()
        * 100,
        2
    ) AS revenue_share_percent

FROM category_revenue

ORDER BY revenue DESC;