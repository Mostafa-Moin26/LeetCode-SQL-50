// Problem link ----->
https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT x,y,z,
case WHEN (x+y) > z AND (x+z) > y AND (y+z) > x THEN 'Yes' ELSE 'No' end AS triangle
FROM Triangle; 