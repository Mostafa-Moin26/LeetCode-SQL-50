// Problem link ----->
https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT E1.employee_id,E1.name,COUNT(E2.reports_to) AS reports_count,ROUND(AVG(E2.age)) AS average_age
FROM Employees E1, Employees E2
WHERE E1.employee_id = E2.reports_to
GROUP BY E1.employee_id, E1.name
ORDER BY E1.employee_id;