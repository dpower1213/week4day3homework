-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT customer.customer_id, first_name, last_name, amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;
