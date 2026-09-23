SELECT customers.customer_name,SUM(orders.sales) AS total_sales,AVG(orders.discount) AS avg_discount,COUNT(orders.order_id) AS total_orders,
CASE WHEN SUM(orders.sales) > 2500 THEN 'VIP' ELSE 'REGULAR' END AS customer_type
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id GROUP BY customers.customer_id, customers.customer_name
ORDER BY total_sales DESC;