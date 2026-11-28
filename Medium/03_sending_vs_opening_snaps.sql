-- Problem  :  Sending vs. Opening Snaps
-- Difficulty: Medium 
-- Link     : https://datalemur.com/questions/time-spent-snaps

-- Your solution here

SELECT
 b.age_bucket,
 ROUND(SUM(CASE WHEN a.activity_type="send" THEN a.time_spent END )*100.0/SUM(CASE WHEN a.activity_type="send" OR a.activity_type="open" THEN a.time_spent END ),2) AS send_perc,
 ROUND(SUM(CASE WHEN a.activity_type="open" THEN a.time_spent END )*100.0/SUM(CASE WHEN a.activity_type="send" OR a.activity_type="open" THEN a.time_spent END ),2) AS open_perc
FROM activities AS a 
INNER JOIN age_breakdown AS b 
 ON a.user_id=b.user_id
GROUP BY b.age_bucket 
