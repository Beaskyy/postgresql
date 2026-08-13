INSERT INTO products (name, category, price, stock, is_active, sku, description)
VALUES 
  ('Laptop', 'Electronics', 2000.00, 5, true, 'LAP-002', 'Macbook Pro 2020'),
  ('Phone', 'Devices', 1000.00, 10, false, 'PHO-002', 'Iphone 13'),
  ('Keyboard', 'Electronics', 50.00, 20, true, 'KEY-003', 'Mechanical keyboard');

  -- SELECT * FROM products;
  SELECT name, category, price, stock, sku
  FROM products 
  WHERE sku IN ('LAP-001', 'PHO-001', 'KEY-001');