// Problem link ----->
https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ------->
SELECT 
    e.name
FROM 
    Employee e
JOIN 
    (SELECT 
         managerId
     FROM 
         Employee
     GROUP BY 
         managerId
     HAVING 
         COUNT(id) >= 5) AS managers
ON 
    e.id = managers.managerId;