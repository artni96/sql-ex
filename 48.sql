select class from classes
join outcomes
on outcomes.ship = classes.class
where result = 'sunk'
union
select class from ships
join outcomes
on outcomes.ship = ships.name
where result = 'sunk'
