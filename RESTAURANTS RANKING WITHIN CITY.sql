-- RESTAURANT RANKING WITHIN EACH CITY --
SELECT
restaurant_name,
city,
aggregate_rating,
votes,
RANK() OVER(
PARTITION BY city
ORDER BY aggregate_rating DESC
) AS city_rank
FROM zomato_clean;
