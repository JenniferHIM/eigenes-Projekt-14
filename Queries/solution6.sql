--Task: Create an overview of the addresses that are not associated to any customer.

SELECT *
FROM address a
LEFT JOIN customer c
ON c.address_id = a.address_id
WHERE c.customer_id is NULL;