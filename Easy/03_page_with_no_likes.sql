-- Problem  :  Page With No Likes
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/sql-page-with-no-likes

-- Your solution here
SELECT 
 p.page_id
FROM pages AS p 
LEFT JOIN page_likes AS pl 
 ON p.page_id=pl.page_id
WHERE pl.page_id IS NULL
