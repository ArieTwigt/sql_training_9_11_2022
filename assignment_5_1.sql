-- SQLite
WITH cars_color AS (
            SELECT brands.country,
                    cars.color,
                   COUNT(*) AS aantal
            FROM registered_cars AS cars
            JOIN car_brands AS brands
              ON cars.brand = brands.brand
            GROUP BY 1,2
)            


SELECT cars_color.country,
       cars_color.color,
       cars_color.aantal AS totaal_aantal
FROM cars_color
GROUP BY 1,2
ORDER BY 1, 3 DESC