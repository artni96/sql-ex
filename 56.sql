select c.class, count(sum_classes.ship)
from classes c
left join (
select ships.class, outcomes.ship
from outcomes
left join ships
on ships.name=outcomes.ship
where outcomes.result = 'sunk'
) as sum_classes
on sum_classes.class = c.class or sum_classes.ship = c.class
group by c.class
