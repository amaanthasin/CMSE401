SET enable_indexscan = off;
SET enable_bitmapscan = off;
SET enable_nestloop = off;

EXPLAIN ANALYZE
SELECT u.name, o.total
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.total > 400;
