-- SQLite
SELECT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE cars.price <= 20000
  AND cars.brand IN ('BMW', 'AUDI')
