SELECT name, price
FROM products
WHERE name LIKE 'Wireless%';

SELECT name, price
FROM products
WHERE name ILIKE '%mouse%';

SELECT name, category, description
FROM products
WHERE name ILIKE '%keyboard%'
OR category ILIKE '%keyboard%';