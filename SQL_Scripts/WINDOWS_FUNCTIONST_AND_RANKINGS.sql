SELECT
restaurant_name,
city,
aggregate_rating,

RANK() OVER(
PARTITION BY city
ORDER BY aggregate_rating DESC
) AS rank_value,

DENSE_RANK() OVER(
PARTITION BY city
ORDER BY aggregate_rating DESC
) AS dense_rank_value,

ROW_NUMBER() OVER(
PARTITION BY city
ORDER BY aggregate_rating DESC
) AS row_num

FROM zomato_clean;
