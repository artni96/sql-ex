select class, count(name) from (
select classes.class, name
from classes
join ships
on ships.class = classes.class
where name in (
select ship from outcomes where result = 'sunk'
)
union
select classes.class, ship
from outcomes
join classes
on classes.class = ship
where result = 'sunk'
) table_1
where class in (
select class from (
select c.class, sh.name
from classes c
join ships sh
on sh.class = c.class
union
select c.class, o.ship
from classes c
join outcomes o
on o.ship = c.class
) table_1
group by class
having count(name) >= 3
)
group by class