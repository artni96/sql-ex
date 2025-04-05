SELECT maker,
	MAX(PC.price) as price
FROM Product
INNER JOIN PC
ON Product.model = PC.model
GROUP BY maker
