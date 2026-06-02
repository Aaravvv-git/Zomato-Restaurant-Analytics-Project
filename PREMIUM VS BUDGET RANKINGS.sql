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