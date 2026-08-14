SELECT name, description
FROM products
WHERE description IS NULL;

SELECT name, description
FROM products
WHERE description IS NOT NULL;

SELECT name, category, description, is_active 
FROM products
WHERE is_active = true
  AND description IS NULL