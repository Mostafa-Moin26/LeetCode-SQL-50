// Problem link ----->
https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT customer_id
FROM customer c
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key)=(SELECT COUNT(DISTINCT product_key) FROM product);