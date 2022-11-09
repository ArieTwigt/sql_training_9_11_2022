-- SQLite
SELECT cars.brand || " " || cars.model AS car
      ,cars.price 
      ,cars.tax
      ,cars.price + cars.tax AS price_including_tax
FROM registered_cars AS cars