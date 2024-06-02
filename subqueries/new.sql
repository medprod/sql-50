SELECT p.product_name, 
SUM(o.unit) AS unit
FROM Products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_id
HAVING YEAR(o.order_date) = '2020' 
AND MONTH(o.order_date) = '02'