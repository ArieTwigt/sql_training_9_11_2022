-- SQLite
SELECT cars.brand,
       cars.model,
       AVG(motor.net_power_electric) AS mean_net_power_electric
FROM registered_cars AS cars
JOIN cars_motor AS motor
  ON cars.plate = motor.plate
WHERE cars.brand = 'VOLVO'
  AND motor.net_power_electric IS NOT NULL
GROUP BY 1,2
ORDER BY mean_net_power_electric DESC