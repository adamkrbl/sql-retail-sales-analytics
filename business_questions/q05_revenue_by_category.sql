SELECT
    products.category,

    ROUND(
        SUM(order_items.quantity * order_items.unit_price),
        2
    ) AS revenue,

    SUM(order_items.quantity) AS units_sold

FROM products

JOIN order_items
    ON products.product_id = order_items.product_id

GROUP BY
    products.category

ORDER BY revenue DESC;