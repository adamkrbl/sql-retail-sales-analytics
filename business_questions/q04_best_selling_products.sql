SELECT
    products.product_id,
    products.product_name,
    products.category,

    SUM(order_items.quantity) AS total_quantity_sold,

    ROUND(
        SUM(order_items.quantity * order_items.unit_price),
        2
    ) AS revenue

FROM products

JOIN order_items
    ON products.product_id = order_items.product_id

GROUP BY
    products.product_id,
    products.product_name,
    products.category

ORDER BY revenue DESC;