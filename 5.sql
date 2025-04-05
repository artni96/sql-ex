SELECT model,
	speed,
	hd
FROM PC
WHERE (cd='24x' or cd='12x')
	AND price < 600
