-- ONLINE DELIVERY IMPACT --

SELECT has_online_delivery,
COUNT(*) AS restaurants,
ROUND(AVG(aggregate_rating),2) AS avg_rating,
ROUND(AVG(votes),0) AS avg_votes
FROM zomato_clean
GROUP BY has_online_delivery;
