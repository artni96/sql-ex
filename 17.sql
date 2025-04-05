SELECT DISTINCT type as Type,
	Laptop.model as Model,
	Laptop.speed as Speed
FROM Laptop, Product
WHERE type='Laptop' AND speed < ALL
(SELECT speed
FROM PC)
