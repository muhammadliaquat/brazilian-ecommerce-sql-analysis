-- How do we group customers based on their total spending history?

WITH CustomerTotals AS (
    SELECT 
        customer_unique_id,
        SUM(payment_value) AS lifetime_value
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_payments p ON o.order_id = p.order_id
    GROUP BY 1
)
SELECT 
    customer_unique_id,
    lifetime_value,
    CASE 
        WHEN lifetime_value > 500 THEN 'High Value'
        WHEN lifetime_value BETWEEN 200 AND 500 THEN 'Mid Value'
        ELSE 'Low Value'
    END AS segment
FROM CustomerTotals
ORDER BY lifetime_value DESC;