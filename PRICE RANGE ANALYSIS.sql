-- PRICE RANGE ANALYSIS --
-- 4: LUXURY
-- 3: PREMIUM
-- 2: MODERATE
-- 1: BUDGET

SELECT price_range,
COUNT(*) AS restaurants,
ROUND(AVG(aggregate_rating),2) AS avg_rating,
ROUND(AVG(votes),0) AS avg_votes
FROM zomato_clean
GROUP BY price_range
ORDER BY avg_votes DESC;