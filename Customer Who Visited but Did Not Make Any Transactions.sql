// Problem Link ----->
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50

// Solution ---->
select v.customer_id, COUNT(v.visit_id) as count_no_trans
from Visits v
LEFT JOIN Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
GROUP BY v.customer_id;