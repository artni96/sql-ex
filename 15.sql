SELECT hd
FROM PC
GROUP BY hd
HAVING COUNT(hd) >= 2
