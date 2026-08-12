DROP TABLE IF EXISTS basics.values_examples;

CREATE TABLE basics.values_examples (
  id SERIAL PRIMARY KEY, 
  nickname TEXT,
  bio TEXT,
  score INTEGER
);

INSERT INTO basics.values_examples (nickname, bio, score)
VALUES
(null, 'learning postgreSQL', 10),
('', 'empty nickname', 20),
('Beasky', '', 0),
('John', null, null);

SELECT * FROM basics.values_examples;

SELECT * FROM basics.values_examples
WHERE nickname IS NULL;

SELECT * FROM basics.values_examples
WHERE nickname = '';

SELECT * FROM basics.values_examples
WHERE score = 0;

SELECT * FROM basics.values_examples
WHERE nickname IS NOT NULL;