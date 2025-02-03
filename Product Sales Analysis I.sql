// Problem Link ----->
https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

// Solutions ------>
select Product.product_name, Sales.year, Sales.price
from Sales
INNER JOIN Product   // here you can use JOIN instead of INNER JOIN
on Product.product_id = Sales.product_id;