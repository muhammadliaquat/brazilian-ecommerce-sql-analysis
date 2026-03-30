-- Does expensive shipping lead to bad reviews?

SELECT 
    review_score,
    ROUND(AVG(freight_value)::numeric, 2) AS avg_freight_paid,
    COUNT(*) AS review_count
FROM order_reviews r
JOIN order_items oi ON r.order_id = oi.order_id
GROUP BY 1
ORDER BY 1 DESC;