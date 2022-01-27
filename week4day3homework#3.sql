-- 3. Show all customers names who have made payments over $175(use subqueries)
SELECT payment.customer_id, SUM(payment.amount),first_name, last_name
FROM payment
JOIN customer on customer.customer_id = payment.customer_id
GROUP BY payment.customer_id,first_name, last_name
HAVING sum(payment.amount)>175;
 

