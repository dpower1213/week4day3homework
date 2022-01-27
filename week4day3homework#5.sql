-- 5. Which staff member had the most transactions?
SELECT staff.staff_id, first_name, last_name,
COUNT(rental.rental_id) AS res
FROM staff
RIGHT JOIN "rental"
ON STAFF.staff_id = "rental".staff_id
GROUP BY staff.staff_id, first_name, last_name
ORDER BY res DESC
FETCH FIRST 1 ROWS ONLY
