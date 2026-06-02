-- TOP RATED CUISINES --

SELECT cuisines,
COUNT(*) AS restaurants,
ROUND(AVG(aggregate_rating),2) AS avg_rating
FROM zomato_clean
WHERE aggregate_rating > 0
GROUP BY cuisines
HAVING COUNT(*) >= 10 -- removes cuisines with very few restaurants --
ORDER BY avg_rating DESC;
