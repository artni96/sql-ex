WITH all_products
AS (SELECT price,
	model
FROM PC
UNION
SELECT price,
	model
FROM Laptop
UNION
SELECT price,
	model
FROM Printer
)
SELECT model
FROM all_products
WHERE price = (
SELECT MAX(price)
FROM all_products)