with ships_table as(
select classes.class, name from classes
join ships
on ships.class = classes.class
UNION
select class, ship from classes
join outcomes
on outcomes.ship = classes.class
)
select class from ships_table
group by class
having count(name) = 1