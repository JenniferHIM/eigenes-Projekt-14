--Task: Create an overview of how many movies (titles) there are in each category (name)

SELECT name, COUNT(*)
FROM film f
LEFT JOIN film_category fc
ON f.film_id = fc.film_id
LEFT JOIN category c
ON fc.category_id = c.category_id
GROUP BY name
ORDER BY COUNT(*) DESC;