WITH all_ships_numguns AS (
SELECT c1.numGuns, c1.type, sh.name as ship
FROM Classes c1
JOIN Ships sh
ON c1.class = sh.class
UNION
SELECT c2.numGuns, c2.type, o.ship as ship
FROM Classes c2
JOIN Outcomes o
ON c2.class = o.ship)
select cast(avg(numguns+0.0) as decimal(4,2))
from all_ships_numguns
where type = 'bb'