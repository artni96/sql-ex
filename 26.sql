WITH result AS (
SELECT Product.maker,
	PC.code,
	PC.speed,
	PC.ram,
	PC.hd,
	PC.price,
	Product.type
FROM Product
JOIN PC
ON PC.model = Product.model
WHERE maker = 'A'
UNION
SELECT Product.maker,
	Laptop.code,
	Laptop.speed,
	Laptop.ram,
	Laptop.hd,
	Laptop.price,
	Product.type
FROM Product
JOIN Laptop
ON Laptop.model = Product.model
WHERE maker = 'A')
SELECT AVG(price)
FROM result