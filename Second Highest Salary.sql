// Problem link ----->
https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT
(SELECT DISTINCT Salary 
FROM Employee ORDER BY salary DESC 
LIMIT 1 offset 1) 
AS SecondHighestSalary;