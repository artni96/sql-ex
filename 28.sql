SELECT COUNT(maker)
FROM (
SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(model) = 1
) counts
