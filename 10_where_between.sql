-- SQLite
SELECT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE cars.price BETWEEN 10000 AND 20000
ORDER BY cars.price