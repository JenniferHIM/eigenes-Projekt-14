/*Task: Create a list that shows all payments including the payment_id, amount, 
and the film category (name) plus the total amount that was made in this category. 
Order the results ascendingly by the category (name) and as second order criterion by the payment_id ascendingly.*/

SELECT title, amount, name, payment_id, 
(SELECT SUM(amount)
FROM payment p
LEFT JOIN rental r
ON p.rental_id = r.rental_id
LEFT JOIN inventory i
ON i.inventory_id = r.inventory_id
LEFT JOIN film f
ON i.film_id = f.film_id
LEFT JOIN film_category fc
ON f.film_id = fc.film_id
LEFT JOIN category c1
ON fc.category_id = c1.category_id
WHERE c1.name = c.name)
FROM payment p
LEFT JOIN rental r
ON p.rental_id = r.rental_id
LEFT JOIN inventory i
ON i.inventory_id = r.inventory_id
LEFT JOIN film f
ON i.film_id = f.film_id
LEFT JOIN film_category fc
ON f.film_id = fc.film_id
LEFT JOIN category c
ON fc.category_id = c.category_id
ORDER BY name, payment_id;