// Problem link ----->
https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS unique_numbers;