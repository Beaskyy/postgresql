-- multiple sql statements run as one safe unit

BEGIN;

UPDATE posts
SET status = 'published'
WHERE title = 'Indexes for Beginners'
        AND status = 'draft';

UPDATE posts
SET views = views + 50
WHERE title = 'Indexes for Beginners';

SELECT
title, 
status,
views
FROM posts
WHERE title = 'Indexes for Beginners';

COMMIT;