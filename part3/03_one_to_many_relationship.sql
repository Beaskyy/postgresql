-- one parent rows can have many children rows
-- one user can write many posts
-- one post will always belong to one user

-- users - parent table
-- posts - child table

-- posts.user_id -> user.id

-- user.id is the original id
-- posts.user_id stores that original user id inside the posts table

-- show all posts with their authors
SELECT 
users.name AS author_name,
posts.title AS post_title,
posts.status
FROM users
INNER JOIN posts
ON users.id = posts.user_id
ORDER BY users.name, posts.title