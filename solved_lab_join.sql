SELECT 
    c.name AS category_name, 
    COUNT(DISTINCT fc.film_id) AS total_films
FROM 
    category AS c
INNER JOIN 
    film_category AS fc ON c.category_id = fc.category_id
GROUP BY 
    c.category_id, 
    c.name
ORDER BY 
    total_films DESC, 
    category_name ASC;

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
;

