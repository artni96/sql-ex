SELECT DISTINCT maker
FROM Product
INNER JOIN PC
ON PC.model=Product.model
WHERE PC.speed >= 450
