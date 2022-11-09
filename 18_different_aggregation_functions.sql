SELECT 
MAX(cars.price) AS max_prijs,
MIN(cars.price) AS min_prijs,
AVG(cars.price) AS gemiddelde_prijs,
SUM(cars.price) AS totale_prijs
FROM registered_cars AS cars