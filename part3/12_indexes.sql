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