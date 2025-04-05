SELECT DISTINCT maker,
	Printer.price
FROM Product
JOIN Printer ON
Product.model=Printer.model
WHERE price = (
SELECT MIN(price)
FROM Printer
WHERE color = 'y')
AND Printer.color = 'y'
