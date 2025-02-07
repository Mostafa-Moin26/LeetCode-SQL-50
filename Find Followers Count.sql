// Problem link ----->
https://leetcode.com/problems/find-followers-count/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
SELECT user_id, COUNT(DISTINCT(follower_id)) AS followers_count
FROM followers
GROUP BY user_id