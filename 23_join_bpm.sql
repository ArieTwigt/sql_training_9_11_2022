WITH cars_tax AS ( SELECT brands.country, 
                           cars.tax,
                           cars.price,
                           (cars.tax / cars.price) * 100 AS tax_pct
                    FROM registered_cars AS cars
                    JOIN car_brands AS brands
                      ON cars.brand = brands.brand)

SELECT country, 
       ROUND(AVG(tax_pct), 2) AS avg_tax_pct
FROM cars_tax
GROUP BY 1
ORDER BY avg_tax_pct DESC