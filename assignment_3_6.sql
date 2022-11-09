SELECT DISTINCT cars.brand, 
       cars.model,
       SUBSTR(cars.model, 1,1) || "-class" AS class
FROM registered_cars AS cars
WHERE cars.brand = 'MERCEDES-BENZ'