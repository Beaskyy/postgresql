DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  is_active BOOLEAN DEFAULT true,
  age INTEGER CHECK(age >= 18),
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts (full_name, email, age)
VALUES
  ('Beasky', 'beasky@gmail.com', 20),
  ('John', 'john@gmail.com', 25);

-- INSERT INTO basics.accounts (email, age)
-- VALUES
--   ('beasky@gmail.com', 20);

  SELECT * FROM basics.accounts;