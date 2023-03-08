/*
 * Compute the number of customers who live outside of the US.
 */

SELECT count(*)
FROM CUSTOMER
JOIN ADDRESS USING (address_id)
JOIN CITY USING (city_id)
JOIN COUNTRY USING (country_id)
WHERE country != 'United States';

