SELECT name, price, stock, sku
FROM products
WHERE sku = 'KEY-001';

UPDATE products
SET price = 1119.00,
  stock = 23
WHERE sku = 'KEY-001';

SELECT name, price, stock, sku
FROM products
WHERE sku = 'KEY-001';