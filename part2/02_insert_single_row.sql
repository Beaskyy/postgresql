INSERT INTO products (name, category, price, stock, is_active, sku, description)
VALUES (
  'Keyboard', 'Electronics', 50.00, 20, true, 'KEY-002', 'Mechanical keyboard');

SELECT * FROM products WHERE sku='KEY-001';