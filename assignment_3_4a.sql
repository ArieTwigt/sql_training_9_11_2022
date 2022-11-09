-- SQLite
SELECT COUNT(DISTINCT cars.brand || " " || cars.model) AS verschillende_modellen
FROM registered_cars AS cars
WHERE cars.seats >= 7