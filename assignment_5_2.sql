WITH hybrid_cars AS (

  SELECT cars.plate,
                     cars.brand,
                     cars.model,
                     AVG(cars.price) AS avg_price,
                     SUM(motor.net_power_fuel) AS sum_fuel,
                     SUM(motor.net_power_electric) AS sum_electric
              FROM cars_motor AS motor
              JOIN registered_cars AS cars
                ON motor.plate = cars.plate
              WHERE cars.brand IN ('VOLVO', 'LEXUS')
              GROUP BY 1,2,3
              HAVING sum_fuel IS NOT NULL
                 AND sum_electric IS NOT NULL
) 

SELECT hybrid_cars.brand,
       ROUND(AVG(hybrid_cars.avg_price), 2) AS avg_price
FROM hybrid_cars
GROUP BY 1
ORDER BY 2 DESC