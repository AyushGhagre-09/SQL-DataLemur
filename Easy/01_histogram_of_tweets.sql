-- Problem  :  Histogram of Tweets
-- Difficulty: Easy 
-- Link     : https://datalemur.com/questions/sql-histogram-tweets

-- Your solution here
SELECT
 t.tweet_bucket,
 COUNT(t.user_id) AS users_num
FROM (
SELECT 
 user_id,
 COUNT(tweet_id) AS tweet_bucket
FROM  tweets
WHERE tweet_date>='2022-01-01 00:00:00' AND tweet_date<'2023-01-01 00:00:00'
GROUP BY user_id) AS t
GROUP BY t.tweet_bucket;