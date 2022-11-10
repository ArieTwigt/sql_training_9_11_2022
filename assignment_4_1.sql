-- SQLite
SELECT cars.brand,
       cars.model,
       COUNT(*) as aantal
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1, 2
ORDER BY aantal DESC