-- Problem  :  Cities With Completed Trades
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/completed-trades

-- Your solution here
SELECT
 u.city,
 COUNT(CASE WHEN t.status='Completed' THEN 1  END ) AS total_orders
FROM trades AS t 
INNER JOIN users AS u 
 ON t.user_id=u.user_id
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3
 
