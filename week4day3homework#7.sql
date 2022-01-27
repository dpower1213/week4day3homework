-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT customer.customer_id, first_name, last_name, amount,
(SELECT COUNT(payment.customer_id) = 1
FROM payment)
FROM customer
LEFT JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99
ORDER BY amount DESC