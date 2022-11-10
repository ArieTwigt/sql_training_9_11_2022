-- SQLite
SELECT cars.brand,
       cars.model,
       cars.price,
       cars.seats,
       cars.price / cars.seats AS price_per_seat
FROM registered_cars AS cars
ORDER BY price_per_seat DESC