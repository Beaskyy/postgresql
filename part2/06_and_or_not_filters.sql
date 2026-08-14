SELECT name, category, price
FROM products
WHERE category = 'Electronics'
AND price > 1000;

SELECT name, category, price
FROM products
WHERE category = 'Electronics'
OR price > 1000;

SELECT name, category
FROM products
WHERE NOT category = 'Electronics';

SELECT name, category, stock
FROM products
WHERE (category = 'Electronics' OR category = 'Devices')
AND stock > 0;