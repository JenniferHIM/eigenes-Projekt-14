/*Task: Create an overview of the revenue (sum of amount) grouped by a column in the format "country, city".

Question: Which country, city has the least sales?*/


SELECT ct.city, c.country, SUM(pt.amount)
FROM customer cus
LEFT JOIN address ad
ON cus.address_id = ad.address_id
LEFT JOIN city ct
ON ad.city_id = ct.city_id
LEFT JOIN country c
ON ct.country_id = c.country_id
LEFT JOIN payment pt
ON cus.customer_id = pt.customer_id
GROUP BY ct.city, c.country
ORDER BY SUM(pt.amount) ASC;