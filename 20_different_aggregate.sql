-- SQLite

SELECT cars_grouped.brand,
       cars_grouped.gemiddelde_prijs,
       totale_omzet / totale_afzet AS GEMIDDELDE_2
FROM (
    SELECT cars.brand,
           cars.model,
           SUM(cars.price) AS totale_omzet,
           COUNT(cars.price) AS totale_afzet,
           ROUND(AVG(cars.price), 2) AS gemiddelde_prijs
    FROM registered_cars AS cars
    WHERE cars.price <= 20000
    GROUP BY cars.brand, cars.model
    HAVING cars.brand = 'KIA'

) AS cars_grouped

