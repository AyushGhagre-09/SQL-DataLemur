-- Problem  :  Second Highest Salary
-- Difficulty: Medium 
-- Link     : https://datalemur.com/questions/sql-second-highest-salary

-- Your solution here
SELECT salary AS second_highest_salary
FROM employee
ORDER BY salary DESC
LIMIT 1 
OFFSET 1
