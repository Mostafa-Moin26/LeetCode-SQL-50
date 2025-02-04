// Problem link ----->
https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50

// Solution ------->
select 
 s.student_id, s.student_name, 
 sub.subject_name, COUNT(e.student_id) as attended_exams
 from Students s
 CROSS JOIN Subjects sub
 LEFT JOIN Examinations e
 on s.student_id = e.student_id
 and sub.subject_name = e.subject_name
 GROUP BY 
    s.student_id, 
    s.student_name, 
    sub.subject_name
ORDER BY 
    s.student_id, 
    sub.subject_name;;