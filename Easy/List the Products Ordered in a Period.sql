SELECT p.product_name, SUM(o.unit) AS unit
FROM products AS p
JOIN orders AS o ON p.product_id = o.product_id
WHERE MONTH(o.order_date) = 2 and year(o.order_date)=2020
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;