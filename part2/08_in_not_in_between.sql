SELECT name, category, price
FROM products
WHERE category IN ('Electronics', 'Devices');

SELECT name, category, price
FROM products
WHERE category NOT IN ('Devices');

SELECT name, price
FROM products
WHERE price BETWEEN 100 AND 2000;

SELECT name, category, price, stock
FROM products
WHERE category IN ('Electronics', 'Devices')
AND price BETWEEN 10 AND 2000;