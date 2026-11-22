-- Problem  :  Average Review Ratings
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/sql-avg-review-ratings

-- Your solution here
SELECT 
 EXTRACT(MONTH FROM submit_date) AS mth,
 product_id AS product,
 ROUND(AVG(stars),2) AS avg_stars
FROM reviews 
GROUP BY mth,product
ORDER BY mth ASC,product ASC;
