DROP TABLE IF EXISTS basics.products_basics;

CREATE TABLE basics.products_basics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  stock INTEGER DEFAULT 0,
  total_views BIGINT DEFAULT 0,
  price NUMERIC(10, 2) NOT NULL,
  is_active BOOLEAN DEFAULT true
);

-- queries
INSERT INTO basics.products_basics (name, description, stock, total_views, price, is_active)
VALUES
  ('Laptop', 'Macbook Pro 2020', 5, 1000, 2000.00, true),
  ('Phone', 'Iphone 13', 10, 500, 1500.00, false);

SELECT * FROM basics.products_basics;

SELECT id, name, price, is_active
FROM basics.products_basics
WHERE is_active;