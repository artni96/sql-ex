SELECT Product.maker,
	AVG(PC.hd)
FROM Product
JOIN PC
ON PC.model = Product.model
WHERE Product.maker
IN (SELECT maker
FROM Product
WHERE type != 'Laptop'
GROUP BY maker
HAVING COUNT(DISTINCT type) >= 2)
GROUP BY Product.maker
