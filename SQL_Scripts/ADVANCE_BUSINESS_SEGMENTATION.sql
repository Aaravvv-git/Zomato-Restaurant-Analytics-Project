-- PREMIUM VS BUDGET RESTAURANTS --

SELECT restaurant_name,
city,
average_cost_for_two,
CASE 
	WHEN average_cost_for_two >= 2000 THEN 'Premium'
    WHEN average_cost_for_two >= 1000 THEN 'Mid Range'
    ELSE 'Budget'
    END AS Segment
    
FROM zomato_clean;

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
