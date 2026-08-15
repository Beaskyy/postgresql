INSERT INTO products (name, category, price, stock, is_active, sku, description)
VALUES(
  'Laptop', 'Electronics', 2000.00, 5, true, 'LAP-003', 'Macbook Pro 2020')
RETURNING id, name, category, price, stock, is_active, sku, description, created_at;

UPDATE products
SET stock = stock + 11
  WHERE sku = 'LAP-003'
  RETURNING id, name, stock;

DELETE FROM products
WHERE sku = 'LAP-003'
RETURNING id, name, stock;

SELECT name, sku
FROM products
WHERE sku = 'LAP-003';
