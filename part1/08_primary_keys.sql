DROP TABLE IF EXISTS basics.sales;

CREATE TABLE basics.sales (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  price NUMERIC(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.sales (title, price)
VALUES 
  ('Laptop', 2000.00),
  ('Headphones', 100.00),
  ('Keyboard', 50.00);


-- SELECT * FROM basics.sales WHERE id = 2;

-- SELECT * FROM basics.sales ORDER BY id DESC;

  INSERT INTO basics.sales (id, title, price)
  VALUES (1, 'phone', 1000.00);

SELECT * FROM basics.sales;