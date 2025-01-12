

SELECT c.customer_id, 
CONCAT(c.first_name," ", c.last_name) AS customer_name,  
co.order_total,
MAX(order_total) OVER(PARTITION BY customer_id) AS max_customer_spending
FROM customers c
JOIN customer_orders co 
USING (customer_id)
ORDER BY customer_id ASC;
