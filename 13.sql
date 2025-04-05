SELECT AVG(speed)
FROM PC
INNER JOIN Product
ON PC.model = Product.model
WHERE Product.maker = 'A'
