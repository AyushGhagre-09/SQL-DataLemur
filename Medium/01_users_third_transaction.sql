-- Problem  :  User's Third Transaction
-- Difficulty: Medium 
-- Link     : https://datalemur.com/questions/sql-third-transaction

-- Your solution here
WITH third_transaction AS(
  SELECT
   user_id,
   spend,
   transaction_date,
   RANK()OVER(PARTITION BY user_id ORDER BY transaction_date ASC) AS rnk
  FROM transactions
)
SELECT
 user_id,
 spend,
 transaction_date
FROM third_transaction
WHERE rnk=3

