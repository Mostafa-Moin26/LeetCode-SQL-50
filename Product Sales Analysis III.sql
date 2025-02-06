// Problem link ----->
https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
select product_id,year as first_year, quantity, price
from Sales
where(product_id, year) in (select  product_id, min(year) from Sales group by product_id);