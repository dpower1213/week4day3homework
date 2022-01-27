-- 8.) How many free rentals did our stores give away?
SELECT rental.rental_id, payment.rental_id
FROM rental
LEFT JOIN payment ON rental.rental_id = payment.rental_id
WHERE payment.rental_id IS NULL