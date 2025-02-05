// Problem link ---->
https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT 
contest_id, 
round(count(DISTINCT user_id) * 100 /(SELECT count(user_id) FROM Users) ,2) AS percentage
FROM  Register
GROUP BY contest_id
ORDER BY percentage desc,contest_id