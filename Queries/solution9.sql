/*Task: Create a list with the average of the sales amount each staff_id has per customer.

Question: Which staff_id makes on average more revenue per customer?*/

SELECT staff_id, ROUND(AVG(total_amount), 2)
FROM (SELECT SUM(amount) as total_amount, staff_id, customer_id  
FROM payment
GROUP BY staff_id, customer_id) as subquery_total_amount
GROUP BY staff_id;