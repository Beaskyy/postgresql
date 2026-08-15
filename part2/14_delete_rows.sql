INSERT INTO products (name, category, price, stock, is_active, sku, description)
VALUES('temp product to be deleted', 'Electronics', 50.00, 20, true, 'KEY-004', 'Mechanical keyboard');

SELECT name, category, price
FROM products
WHERE sku='KEY-004';

DELETE FROM products
WHERE sku='KEY-004';

SELECT name, category, price
FROM products
WHERE sku='KEY-004';