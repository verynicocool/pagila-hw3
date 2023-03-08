/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query that lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 *
 * HINT:
 * This can be solved with a self join on the film_actor table.
 */

SELECT f1.title
FROM film_actor fa1
JOIN film_actor fa2 USING (actor_id)
JOIN film f1 ON (fa1.film_id = f1.film_id)
JOIN film f2 ON (fa2.film_id = f2.film_id)
WHERE f2.title = 'AMERICAN CIRCUS'
GROUP BY f1.title
HAVING count(actor_id) > 1
ORDER BY f1.title;
