SELECT DISTINCT Product.model AS model,
	Laptop.price AS price
FROM Product
INNER JOIN Laptop
ON Laptop.model = Product.model
WHERE maker='B'
UNION
SELECT DISTINCT Product.model AS model,
	PC.price AS price
FROM Product
INNER JOIN PC
ON PC.model = Product.model
WHERE maker='B'
UNION
SELECT DISTINCT Product.model AS model,
	Printer.price AS price
FROM Product
INNER JOIN Printer
ON Printer.model = Product.model
WHERE maker='B'