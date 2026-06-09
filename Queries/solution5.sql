--Task: Create an overview of the actors' first and last names 
--and in how many movies they appear in.

--Question: Which actor is part of most movies??

SELECT first_name, last_name, COUNT(*)
FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;