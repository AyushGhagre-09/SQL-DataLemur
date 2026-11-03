-- Problem  :  Laptop vs. Mobile Viewership
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/laptop-mobile-viewership

-- Your solution here
SELECT
 COUNT(CASE WHEN device_type='laptop' THEN 1 END) AS laptop_views,
 COUNT(CASE WHEN device_type='phone' OR device_type='tablet' THEN 1 END) AS mobile_views
FROM Viewership;
