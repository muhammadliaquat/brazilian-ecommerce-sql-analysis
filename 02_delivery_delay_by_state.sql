-- Which 5 states have the highest average delivery delay for late orders?
SELECT 
    c.customer_state,
    round(AVG(o.order_delivered_customer_date::date - o.order_estimated_delivery_date::date),0) AS avg_delay 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id 
WHERE o.order_delivered_customer_date > o.order_estimated_delivery_date 
GROUP BY c.customer_state 
ORDER BY avg_delay DESC 
LIMIT 5;