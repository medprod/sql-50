
SELECT SUM(o.unit) AS unit,
p.product_name
FROM Orders o
INNER JOIN Products p
ON o.product_id = p.product_id
WHERE o.order_date LIKE "2020-02%"
GROUP BY o.product_id
HAVING unit >=100
 