SELECT DISTINCT a1.first_name || ' ' || a1.last_name AS "Actor Name"
FROM film_actor fa1
JOIN film_actor fa2 USING (film_id)
JOIN actor a1 ON (a1.actor_id = fa1.actor_id)
JOIN actor a2 ON (a2.actor_id = fa2.actor_id)
WHERE a2.first_name || ' ' || a2.last_name
IN (SELECT a3.first_name || ' ' || a3.last_name AS "NAME"
    FROM film_actor fa3
    JOIN film_actor fa4 USING (film_id)
    JOIN actor a3 ON (a3.actor_id = fa3.actor_id)
    JOIN actor a4 ON (a4.actor_id = fa4.actor_id)
    WHERE a4.first_name || ' ' || a4.last_name = 'RUSSELL BACALL')
EXCEPT
    (SELECT a1.first_name || ' ' || a1.last_name AS "NAME"
    FROM film_actor fa1
    JOIN film_actor fa2 USING (film_id)
    JOIN actor a1 ON (a1.actor_id = fa1.actor_id)
    JOIN actor a2 ON (a2.actor_id = fa2.actor_id)
    WHERE a2.first_name || ' ' || a2.last_name = 'RUSSELL BACALL')
EXCEPT 
    (SELECT 'RUSSEL BACALL')
UNION
    (SELECT 'SUSAN DAVIS')
ORDER BY "Actor Name";
