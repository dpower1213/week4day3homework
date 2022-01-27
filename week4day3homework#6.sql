-- 6. How many movies of each rating are there?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating DESC

