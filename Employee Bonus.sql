// Problem link ----->
https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ------->
select e.name, b.bonus
from Employee e
LEFT JOIN Bonus b
on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null;