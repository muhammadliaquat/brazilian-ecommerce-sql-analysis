-- Which product categories are our top 5 'Money Makers'?

SELECT 
    t.product_category_name_english AS category,
    COUNT(oi.order_id) AS units_sold,
    ROUND(SUM(oi.price)::numeric, 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
GROUP BY 1
ORDER BY total_revenue DESC
LIMIT 5;