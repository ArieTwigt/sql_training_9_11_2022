-- SQLite
SELECT brands.country,
       AVG(cars.price) AS total_amount
FROM registered_cars AS cars
JOIN car_brands AS brands
  ON cars.brand = brands.brand
GROUP BY 1
ORDER BY total_amount DESC