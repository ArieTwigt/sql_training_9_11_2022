WITH cars_hybrid AS (
    
    SELECT cars.brand,
                      cars.model,
                      cars.plate,
                      AVG(cars.price) AS average_price,
                      SUM(motor.net_power_fuel) AS power_fuel,
                      SUM(motor.net_power_electric) AS power_electric
    FROM cars_motor AS motor
    JOIN registered_cars AS cars
      ON motor.plate = cars.plate
    WHERE cars.brand IN ('VOLVO', 'LEXUS')
    GROUP BY 1,2
    HAVING power_electric IS NOT NULL
       AND power_fuel IS NOT NULL

)    

SELECT cars_hybrid.brand,
       ROUND(AVG(cars_hybrid.average_price), 2) AS avg_price
FROM cars_hybrid   
GROUP BY 1
ORDER BY avg_price DESC      