/*
 * Compute the country with the most customers in it. 
 */

SELECT country
FROM COUNTRY
JOIN CITY USING (country_id)
JOIN ADDRESS USING (city_id)
JOIN customer USING (address_id)
GROUP BY country
ORDER BY count(DISTINCT customer_id) DESC
LIMIT 1;
