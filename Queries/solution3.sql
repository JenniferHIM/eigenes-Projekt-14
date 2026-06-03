--Task: Create a list of the film titles including their title, length, 
--and category name ordered descendingly by length. 
--Filter the results to only the movies in the category 'Drama' or 'Sports'.

SELECT title, length, name AS category_name
FROM film f
LEFT JOIN film_category fc
ON f.film_id = fc.film_id
LEFT JOIN category c
ON fc.category_id = c.category_id
WHERE name =  'Sports'
OR name = 'Drama'
ORDER BY length DESC;