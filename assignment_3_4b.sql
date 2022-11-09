-- SQLite
SELECT DISTINCT cars.brand || " " || cars.model AS auto,
       cars.price
FROM registered_cars AS cars
WHERE cars.seats >= 7
ORDER BY cars.price 