-- Problem  :  Unfinished Parts
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/tesla-unfinished-parts

-- Your solution here
SELECT 
 part,
 assembly_step
FROM parts_assembly 
WHERE finish_date IS NULL 
GROUP BY part, assembly_step;
