SELECT 
    c.name AS category_name, 
    COUNT(fc.film_id) AS total_films
FROM 
    category c
JOIN 
    film_category fc ON c.category_id = fc.category_id
GROUP BY 
    c.name
ORDER BY 
    total_films DESC;

SELECT 
    s.store_id, 
    ci.city, 
    co.country
FROM 
    store s
JOIN 
    address a ON s.address_id = a.address_id
JOIN 
    city ci ON a.city_id = ci.city_id
JOIN 
    country co ON ci.country_id = co.country_id;
    
SELECT 
    s.store_id, 
    SUM(p.amount) AS total_revenue_dollars
FROM 
    store s
JOIN 
    staff st ON s.store_id = st.store_id
JOIN 
    payment p ON st.staff_id = p.staff_id
GROUP BY 
    s.store_id;
    
SELECT 
    c.name AS category_name, 
    ROUND(AVG(f.length), 2) AS average_duration
FROM 
    category AS c
JOIN 
    film_category AS fc ON c.category_id = fc.category_id
JOIN 
    film AS f ON fc.film_id = f.film_id
GROUP BY 
    c.name
ORDER BY 
    average_duration DESC;

SELECT 
    s.store_id, 
    SUM(p.amount) AS total_revenue_dollars
FROM 
    store s
JOIN 
    staff st ON s.store_id = st.store_id
JOIN 
    payment p ON st.staff_id = p.staff_id
GROUP BY 
    s.store_id;

**Bonus**:

5.  Identify the film categories with the longest average running time.
6.  Display the top 10 most frequently rented movies in descending order.
7. Determine if "Academy Dinosaur" can be rented from Store 1.
8. Provide a list of all distinct film titles, along with their availability status in the inventory. Include a column indicating whether each title is 'Available' or 'NOT available.' Note that there are 42 titles that are not in the inventory, and this information can be obtained using a `CASE` statement combined with `IFNULL`."