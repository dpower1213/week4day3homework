-- 4. List all customers that live in Nepal (use the city table)
SELECT customer_id, first_name, last_name, country
FROM customer
JOIN "address"
ON customer.address_id = "address".address_id
JOIN "city"
ON  "address".city_id = "city".city_id
JOIN  "country"
ON "country".country_id = "city".country_id
WHERE country.country = 'Nepal'; 

