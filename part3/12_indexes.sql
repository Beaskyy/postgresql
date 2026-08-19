-- Indexes helps postgres find rows faster

SELECT
id,
title,
status,
views,
user_id
FROM posts;

SELECT 
  id,
  views,
  status
  FROM posts
  WHERE status = 'published';

  -- idx_posts_status
  -- idx - index
  -- posts - table
  -- status - column

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

SELECT 
title,
status,
views
FROM posts
WHERE status = 'published';
ORDER BY views DESC;


-- composite index
CREATE INDEX IF NOT EXISTS idx_post_status_views
ON posts(status, views DESC);

SELECT 
title,
status,
views
FROM posts
WHERE user_id = (
  SELECT id
  FROM users
  WHERE name = 'Beasky'
);

CREATE INDEX IF NOT EXISTS idx_users_name
ON users(name);