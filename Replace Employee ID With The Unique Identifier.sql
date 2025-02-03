// Problem Link ----->
https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50

// Solutions ------>
select Employees.name, EmployeeUNI.unique_id
from Employees
LEFT JOIN EmployeeUNI
on Employees.id = EmployeeUNI.id;