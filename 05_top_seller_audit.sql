-- Which sellers provide both high volume and high customer satisfaction?

SELECT 
    s.seller_id,
    COUNT(oi.order_item_id) AS items_sold,
    ROUND(AVG(re.review_score), 2) AS avg_rating
FROM sellers s
JOIN order_items oi ON s.seller_id = oi.seller_id
JOIN order_reviews re ON oi.order_id = re.order_id
GROUP BY s.seller_id
HAVING COUNT(oi.order_item_id) > 50
ORDER BY avg_rating DESC, items_sold DESC
LIMIT 10;