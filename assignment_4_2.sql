-- SQLite
SELECT cars.color,
       AVG(cars.price) AS gemiddelde_prijs
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1
ORDER BY gemiddelde_prijs DESC