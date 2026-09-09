/*Task: Create a query that shows average daily revenue of all Sundays.

Question: What is the daily average revenue of all Sundays?*/

SELECT ROUND(AVG(total), 2)
FROM (
SELECT 
SUM(amount) as total, 
DATE(payment_date) as payment_day
FROM payment
WHERE EXTRACT(ISODOW FROM payment_date) = 7
GROUP BY payment_day);
