-- Problem  :  Data Science Skills
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/matching-skills

-- Your solution here
SELECT 
 candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(CASE WHEN skill='Python' OR skill='Tableau' OR skill='PostgreSQL' THEN 1 END )>=3;
