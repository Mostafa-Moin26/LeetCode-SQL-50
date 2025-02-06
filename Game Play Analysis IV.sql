// Problem link ----->
https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50

// Solution ----->
WITH temp AS (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity 
    GROUP BY player_id
)
SELECT 
    ROUND(
        SUM(DATEDIFF(a.event_date, t.first_login_date) = 1) / COUNT(DISTINCT a.player_id), 2
    ) AS fraction
FROM Activity a
JOIN temp t ON a.player_id = t.player_id;