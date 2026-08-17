SELECT 
COUNT(*) AS total_posts,
COUNT(*) FILTER (WHERE status = 'published') AS published_posts,
COUNT(*) FILTER (WHERE status = 'draft') AS draft_posts,
SUM(views) as total_views,
AVG(views) as average_views,
MIN(views) as min_views,
MAX(views) as max_views
FROM posts;