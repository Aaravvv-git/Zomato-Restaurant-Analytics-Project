-- ONLINE DELIVERY IMPACT --

SELECT has_online_delivery,
COUNT(*) AS restaurants,
ROUND(AVG(aggregate_rating),2) AS avg_rating,
ROUND(AVG(votes),0) AS avg_votes
FROM zomato_clean
GROUP BY has_online_delivery;

-- TOP RATED CUISINES --

SELECT cuisines,
COUNT(*) AS restaurants,
ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_clean
WHERE aggregate_rating > 0
GROUP BY cuisines
HAVING COUNT(*) >= 10 -- removes cuisines with very few restaurants --
ORDER BY avg_rating DESC;

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
