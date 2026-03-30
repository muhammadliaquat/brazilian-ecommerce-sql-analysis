-- How is our revenue trending month-over-month?

SELECT 
    TO_CHAR(order_purchase_timestamp, 'YYYY-MM') AS month,
    ROUND(SUM(payment_value)::numeric, 2) AS total_revenue
FROM orders o
JOIN order_payments p ON o.order_id = p.order_id
WHERE order_status = 'delivered'
GROUP BY 1
ORDER BY 1;