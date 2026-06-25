/*Task: Create the overview of the sales  to determine 
the from which city (we are interested in the city in which the customer lives, not where the store is) 
most sales occur.*/

SELECT ct.city, SUM(p.amount)
FROM payment p
LEFT JOIN customer c
ON p.customer_id = c.customer_id
LEFT JOIN address a
ON c.address_id = a.address_id
LEFT JOIN city ct
ON a.city_id = ct.city_id
GROUP BY ct.city
ORDER BY SUM(p.amount) DESC;