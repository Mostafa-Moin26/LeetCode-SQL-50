// Problem link ---->
https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ---->
SELECT
ROW_NUMBER() OVER(ORDER BY IF(MOD(id, 2) = 0, id-1, id+1) ) AS id,
student
FROM seat;