-- RESTAURANTS PER CITY --
SELECT city, 
COUNT(*) AS restaurant_count
FROM zomato_clean
GROUP BY city
ORDER BY restaurant_count DESC;

-- AVERAGE RATING PER CITY --
SELECT city,
ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_clean
WHERE aggregate_rating > 0
GROUP BY city
ORDER BY avg_rating DESC;

-- TOP CITIES BY VOTES --
SELECT city,
SUM(votes) AS total_votes
FROM zomato_clean
WHERE votes > 0
GROUP BY city
ORDER BY total_votes DESC;
