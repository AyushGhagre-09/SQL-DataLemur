-- Problem  :  Duplicate Job Listings
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/duplicate-job-listings

-- Your solution here
SELECT 
    COUNT(T.cnt) AS duplicate_companies
FROM (
    SELECT 
        COUNT(*) AS cnt
    FROM job_listings
    GROUP BY 
        company_id,
        title,
        description
    HAVING COUNT(*) >= 2
) AS T;




