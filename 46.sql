select name, displacement, numGuns
from classes
right join (
select coalesce(name, ship) as name, class, battle
from ships
full join outcomes
on outcomes.ship = ships.name
where battle = 'Guadalcanal')this_table
on this_table.class = classes.class or this_table.name = classes.class
