WITH hybrid_cars AS (

   SELECT 
          cars.brand,
          SUM(motor.net_power_fuel) AS sum_fuel,
          SUM(motor.net_power_electric) AS sum_electric,
          COUNT(*) AS total
   FROM cars_motor AS motor
   JOIN registered_cars AS cars
     ON motor.plate = cars.plate
   GROUP BY 1
   HAVING sum_fuel IS NOT NULL
      AND sum_electric IS NOT NULL
) 

SELECT brands.country,
       COUNT(*) AS amount
FROM hybrid_cars
JOIN car_brands as brands
  ON hybrid_cars.brand = brands.brand
GROUP BY 1
ORDER BY 2 DESC