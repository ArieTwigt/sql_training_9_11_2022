SELECT COUNT(*) aantal
FROM registered_cars AS cars
WHERE cars.car_type ='hatchback'
  AND cars.price > 40000