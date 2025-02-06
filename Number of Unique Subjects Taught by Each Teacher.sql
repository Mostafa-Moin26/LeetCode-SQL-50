// Problem link ----->
https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
Select  teacher_id ,
count(distinct subject_id ) as cnt from Teacher
group by teacher_id