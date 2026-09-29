/*Task: Create a list of movies - with their length and their replacement cost - 
that are longer than the average length in each replacement cost group.

Question: Which two movies are the shortest on that list and how long are they?*/

SELECT f.title, f.length, f.replacement_cost
FROM film f
WHERE f.length > (SELECT AVG(f2.length)
FROM film f2
WHERE f2.replacement_cost = f.replacement_cost)
ORDER BY f.length ASC;
