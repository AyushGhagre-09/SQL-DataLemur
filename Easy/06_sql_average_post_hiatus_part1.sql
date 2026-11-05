-- Problem  :  Average Post Hiatus (Part 1)
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/sql-average-post-hiatus-1

-- Your solution here
SELECT
 user_id,
 TIMESTAMPDIFF(DAY,MIN(post_date),MAX(post_date)) AS days_between
FROM posts
WHERE YEAR(post_date)=2021
GROUP BY user_id
HAVING days_between!=0;
