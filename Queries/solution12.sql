/*Task: Create a list that shows the "average customer lifetime value" grouped by the different districts.
Question: Which district has the highest average customer lifetime value?*/

SELECT district, ROUND(AVG(total), 2) AS avg_totals
FROM (SELECT c.customer_id, district, SUM(amount) AS total
FROM address ad
INNER JOIN customer c
ON ad.address_id = c.address_id
INNER JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY district, c.customer_id) AS sub
GROUP BY district
ORDER BY avg_totals DESC;