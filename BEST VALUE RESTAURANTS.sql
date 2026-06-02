-- BEST VALUE RESTAURANTS -- 
-- CTE-- 
WITH value_restaurants AS (
SELECT
restaurant_name,
city,
aggregate_rating,
average_cost_for_two,
votes
FROM zomato_clean
WHERE aggregate_rating >= 4
AND average_cost_for_two <= 500
)

SELECT *
FROM value_restaurants
ORDER BY aggregate_rating DESC;