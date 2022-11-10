-- SQLite
SELECT 
       cars.brand, 
       cars.model,
       cars.color,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       AVG(cars.price) AS avg_price
FROM registered_cars AS cars
WHERE cars.brand = 'VOLKSWAGEN'
  AND cars.model LIKE 'GOLF%'
GROUP BY 1,2,3
ORDER BY avg_price DESC
