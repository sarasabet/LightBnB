SELECTproperties.id ,city, title , ROUND(AVG(rating)) as average_rate, MIN(cost_per_night)
FROM properties JOIN property_reviews
ON properties.id = property_id
WHERE city LIKE '%Vanc%'
GROUP BY properties.id
HAVING (AVG(rating)) >4 AND MIN(cost_per_night) >7000 AND MAX(cost_per_night) < 20000
ORDER BY  ROUND(AVG(rating)) DESC
LIMIT 10;