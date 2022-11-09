-- SQLite
SELECT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE cars.brand = 'BMW'
  AND cars.price < 20000
