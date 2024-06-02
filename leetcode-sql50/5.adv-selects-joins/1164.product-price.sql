
WITH CTE as(
    SELECT product_id,
    new_price, change_date,
    dense_rank() OVER (PARTITION BY product_id ORDER BY change_date DESC) as rownum
    FROM Products
    WHERE change_date <= '2019-08-16'
)
-- SELECT * FROM CTE
SELECT product_id, new_price as price FROM CTE
WHERE rownum = 1
UNION
SELECT product_id, 10 FROM products
where product_id not in (select product_id from CTE)