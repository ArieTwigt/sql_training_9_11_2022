-- SQLite
WITH cars_color AS (
        SELECT car_brands.country,
             cars.color,
             COUNT(cars.color) AS amount 
        FROM registered_cars AS cars
        JOIN car_brands
          ON cars.brand = car_brands.brand
        GROUP BY 1,2
        ORDER BY amount
        )

SELECT 
cars_color.country,
cars_color.color,
MAX(cars_color.amount) AS max_amount
FROM cars_color
GROUP BY 1
ORDER BY country     