-- SQLite
SELECT cars.brand,
       cars.model,
       SUM(cars.price) AS totale_omzet,
       COUNT(cars.price) AS totale_afzet,
       AVG(cars.price) AS gemiddelde_prijs
FROM registered_cars AS cars
GROUP BY cars.brand, cars.model
ORDER BY totale_afzet DESC