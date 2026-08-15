CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
  stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
  is_active BOOLEAN NOT NULL DEFAULT true,
  sku TEXT UNIQUE,
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products (name, category, price, stock, is_active, sku, description)
VALUES
  ('Laptop', 'Electronics', 2000.00, 0, true, 'LAP-001', 'Macbook Pro 2020'),
  ('Phone', 'Devices', 1000.00, 10, false, 'PHO-001', 'Iphone 13'),
  ('Keyboard', 'Electronics', 50.00, 20, true, 'KEY-001', 'Mechanical keyboard'),
  ('Wireless Mouse', 'Devices', 20.00, 30, true, 'MOU-001', 'Wireless mouse'),
  ('Wireless Keyboard', 'Devices', 30.00, 40, true, 'KEY-002', 'Wireless keyboard'),
  ('Headphones', 'Electronics', 100.00, 50, true, 'HEA-001', 'Wireless headphones');

SELECT * FROM products;