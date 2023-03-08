/*
 * List the total amount of money that customers from each country have payed.
 * Order the results from most to least money.
 */
SELECT country, sum(amount) AS "total_payments"
FROM COUNTRY
JOIN CITY USING (country_id)
JOIN ADDRESS USING (city_id)
JOIN CUSTOMER USING (address_id)
JOIN PAYMENT USING (customer_id)
GROUP BY country
ORDER BY "total_payments" DESC, country ASC;
