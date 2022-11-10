SELECT cars.brand,
       cars.model,
       cars.car_type,
       cars.color,
       AVG(cars.price) AS gemiddelde_prijs,
       COUNT(*) AS aantal
       

FROM registered_cars AS cars
WHERE cars.brand IN ('AUDI', 'BMW', 'MERCEDES-BENZ')
   AND cars.price BETWEEN 10000 AND 20000
GROUP BY 1,2,3,4
HAVING cars.color = 'ZWART'
ORDER BY gemiddelde_prijs DESC