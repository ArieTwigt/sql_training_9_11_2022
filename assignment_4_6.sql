-- SQLite
SELECT 
       cars.brand, 
       cars.model,
       cars.color,
       MIN(cars.price) min_price,
       MAX(cars.price) max_price,
       AVG(cars.price) avg_price
FROM registered_cars AS cars
WHERE cars.brand = 'VOLKSWAGEN'
  AND cars.model = 'GOLF'
GROUP BY 1,2,3
