SELECT customer_id, first_name, last_name, "address", address2, district
FROM customer
JOIN "address"
ON customer.address_id = "address".address_id
JOIN city
ON city.city_id = "address".city_id
WHERE district = 'Texas';