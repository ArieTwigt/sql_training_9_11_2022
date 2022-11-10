SELECT DISTINCT cars.brand, 
                cars.model
FROM registered_cars AS cars
WHERE cars.car_type ='hatchback'
  AND cars.price > 40000
ORDER BY 1,2  