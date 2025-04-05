SELECT Classes.class as class,
	name,
	Classes.country as country
FROM Ships
INNER JOIN Classes
ON Classes.class = Ships.class
WHERE Classes.class in (
SELECT class
FROM Classes
WHERE numGuns >= 10)
